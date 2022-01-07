; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_delete_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_hpfs_delete_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }
%struct.hpfs_dirent = type { i32, i64 }

@.str = private unnamed_addr constant [44 x i8] c"attempt to delete last dirent in dnode %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*, %struct.hpfs_dirent*)* @hpfs_delete_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpfs_delete_de(%struct.super_block* %0, %struct.dnode* %1, %struct.hpfs_dirent* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dnode*, align 8
  %6 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dnode* %1, %struct.dnode** %5, align 8
  store %struct.hpfs_dirent* %2, %struct.hpfs_dirent** %6, align 8
  %7 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %8 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.dnode*, %struct.dnode** %5, align 8
  %14 = getelementptr inbounds %struct.dnode, %struct.dnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = call i32 @hpfs_error(%struct.super_block* %12, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.dnode*, %struct.dnode** %5, align 8
  %20 = getelementptr inbounds %struct.dnode, %struct.dnode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %24 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = sub nsw i32 %22, %26
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = load %struct.dnode*, %struct.dnode** %5, align 8
  %30 = getelementptr inbounds %struct.dnode, %struct.dnode* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %32 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %33 = call i32 @de_next_de(%struct.hpfs_dirent* %32)
  %34 = load %struct.dnode*, %struct.dnode** %5, align 8
  %35 = getelementptr inbounds %struct.dnode, %struct.dnode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load %struct.dnode*, %struct.dnode** %5, align 8
  %39 = bitcast %struct.dnode* %38 to i8*
  %40 = sext i32 %37 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %6, align 8
  %43 = bitcast %struct.hpfs_dirent* %42 to i8*
  %44 = ptrtoint i8* %41 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  %48 = call i32 @memmove(%struct.hpfs_dirent* %31, i32 %33, i32 %47)
  br label %49

49:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memmove(%struct.hpfs_dirent*, i32, i32) #1

declare dso_local i32 @de_next_de(%struct.hpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
