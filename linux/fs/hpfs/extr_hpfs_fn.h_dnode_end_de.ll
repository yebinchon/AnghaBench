; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_hpfs_fn.h_dnode_end_de.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_hpfs_fn.h_dnode_end_de.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpfs_dirent = type opaque
%struct.dnode = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"HPFS: dnode_end_de: dnode->first_free = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hpfs_dirent* (%struct.dnode*)* @dnode_end_de to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hpfs_dirent* @dnode_end_de(%struct.dnode* %0) #0 {
  %2 = alloca %struct.dnode*, align 8
  store %struct.dnode* %0, %struct.dnode** %2, align 8
  %3 = load %struct.dnode*, %struct.dnode** %2, align 8
  %4 = getelementptr inbounds %struct.dnode, %struct.dnode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @le32_to_cpu(i32 %5)
  %7 = icmp sge i32 %6, 20
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.dnode*, %struct.dnode** %2, align 8
  %10 = getelementptr inbounds %struct.dnode, %struct.dnode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = icmp sle i32 %12, 2560
  br label %14

14:                                               ; preds = %8, %1
  %15 = phi i1 [ false, %1 ], [ %13, %8 ]
  %16 = zext i1 %15 to i32
  %17 = load %struct.dnode*, %struct.dnode** %2, align 8
  %18 = getelementptr inbounds %struct.dnode, %struct.dnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @CHKCOND(i32 %16, i8* %22)
  %24 = load %struct.dnode*, %struct.dnode** %2, align 8
  %25 = bitcast %struct.dnode* %24 to i8*
  %26 = load %struct.dnode*, %struct.dnode** %2, align 8
  %27 = getelementptr inbounds %struct.dnode, %struct.dnode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le32_to_cpu(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %25, i64 %30
  %32 = bitcast i8* %31 to %struct.hpfs_dirent*
  ret %struct.hpfs_dirent* %32
}

declare dso_local i32 @CHKCOND(i32, i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
