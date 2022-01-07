; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_get_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_get_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_nnode = type { %struct.ubifs_nbranch* }
%struct.ubifs_nbranch = type { %struct.ubifs_nnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_nnode* @ubifs_get_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, i32 %2) #0 {
  %4 = alloca %struct.ubifs_nnode*, align 8
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %struct.ubifs_nnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nbranch*, align 8
  %9 = alloca %struct.ubifs_nnode*, align 8
  %10 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %12 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %11, i32 0, i32 0
  %13 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %13, i64 %15
  store %struct.ubifs_nbranch* %16, %struct.ubifs_nbranch** %8, align 8
  %17 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %18 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %17, i32 0, i32 0
  %19 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %18, align 8
  store %struct.ubifs_nnode* %19, %struct.ubifs_nnode** %9, align 8
  %20 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  %21 = icmp ne %struct.ubifs_nnode* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %9, align 8
  store %struct.ubifs_nnode* %23, %struct.ubifs_nnode** %4, align 8
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %26 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %25, %struct.ubifs_nnode* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.ubifs_nnode* @ERR_PTR(i32 %32)
  store %struct.ubifs_nnode* %33, %struct.ubifs_nnode** %4, align 8
  br label %38

34:                                               ; preds = %24
  %35 = load %struct.ubifs_nbranch*, %struct.ubifs_nbranch** %8, align 8
  %36 = getelementptr inbounds %struct.ubifs_nbranch, %struct.ubifs_nbranch* %35, i32 0, i32 0
  %37 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %36, align 8
  store %struct.ubifs_nnode* %37, %struct.ubifs_nnode** %4, align 8
  br label %38

38:                                               ; preds = %34, %31, %22
  %39 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %4, align 8
  ret %struct.ubifs_nnode* %39
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
