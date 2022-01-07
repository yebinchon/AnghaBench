; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_auth_info_match.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_auth_info_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_auth_info = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_auth_info_match(%struct.nfs_auth_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfs_auth_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.nfs_auth_info* %0, %struct.nfs_auth_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.nfs_auth_info*, %struct.nfs_auth_info** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_auth_info, %struct.nfs_auth_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %31, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nfs_auth_info*, %struct.nfs_auth_info** %4, align 8
  %16 = getelementptr inbounds %struct.nfs_auth_info, %struct.nfs_auth_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.nfs_auth_info*, %struct.nfs_auth_info** %4, align 8
  %21 = getelementptr inbounds %struct.nfs_auth_info, %struct.nfs_auth_info* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %35

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %13

34:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %29, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
