; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_set_last_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dnode.c_set_last_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.dnode = type { i32, i32 }
%struct.hpfs_dirent = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"set_last_pointer: empty dnode %08x\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"set_last_pointer: dnode %08x has already last pointer %08x\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"set_last_pointer: bad last dirent in dnode %08x\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"set_last_pointer: too long dnode %08x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.dnode*, i64)* @set_last_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_last_pointer(%struct.super_block* %0, %struct.dnode* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.dnode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hpfs_dirent*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.dnode* %1, %struct.dnode** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dnode*, %struct.dnode** %5, align 8
  %9 = call %struct.hpfs_dirent* @dnode_last_de(%struct.dnode* %8)
  store %struct.hpfs_dirent* %9, %struct.hpfs_dirent** %7, align 8
  %10 = icmp ne %struct.hpfs_dirent* %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = load %struct.dnode*, %struct.dnode** %5, align 8
  %14 = getelementptr inbounds %struct.dnode, %struct.dnode* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %12, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %86

18:                                               ; preds = %3
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = call %struct.TYPE_2__* @hpfs_sb(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %18
  %25 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %26 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = load %struct.dnode*, %struct.dnode** %5, align 8
  %32 = getelementptr inbounds %struct.dnode, %struct.dnode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %36 = call i32 @de_down_pointer(%struct.hpfs_dirent* %35)
  %37 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %30, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  br label %86

38:                                               ; preds = %24
  %39 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %40 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = icmp ne i32 %42, 32
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = load %struct.dnode*, %struct.dnode** %5, align 8
  %47 = getelementptr inbounds %struct.dnode, %struct.dnode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %45, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %86

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %18
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = load %struct.dnode*, %struct.dnode** %5, align 8
  %57 = getelementptr inbounds %struct.dnode, %struct.dnode* %56, i32 0, i32 0
  %58 = call i32 @le32_add_cpu(i32* %57, i32 4)
  %59 = load %struct.dnode*, %struct.dnode** %5, align 8
  %60 = getelementptr inbounds %struct.dnode, %struct.dnode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @le32_to_cpu(i32 %61)
  %63 = icmp sgt i32 %62, 2048
  br i1 %63, label %64, label %74

64:                                               ; preds = %55
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = load %struct.dnode*, %struct.dnode** %5, align 8
  %67 = getelementptr inbounds %struct.dnode, %struct.dnode* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = call i32 (%struct.super_block*, i8*, i32, ...) @hpfs_error(%struct.super_block* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load %struct.dnode*, %struct.dnode** %5, align 8
  %72 = getelementptr inbounds %struct.dnode, %struct.dnode* %71, i32 0, i32 0
  %73 = call i32 @le32_add_cpu(i32* %72, i32 -4)
  br label %86

74:                                               ; preds = %55
  %75 = call i32 @cpu_to_le16(i32 36)
  %76 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %77 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %79 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @cpu_to_le32(i64 %80)
  %82 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %7, align 8
  %83 = bitcast %struct.hpfs_dirent* %82 to i8*
  %84 = getelementptr inbounds i8, i8* %83, i64 32
  %85 = bitcast i8* %84 to i32*
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %11, %29, %44, %64, %74, %52
  ret void
}

declare dso_local %struct.hpfs_dirent* @dnode_last_de(%struct.dnode*) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_2__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i32 @de_down_pointer(%struct.hpfs_dirent*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
