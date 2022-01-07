; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_destroy_cnext.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_tnc_destroy_cnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, %struct.ubifs_znode* }
%struct.ubifs_znode = type { %struct.ubifs_znode* }

@COMMIT_BROKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*)* @tnc_destroy_cnext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tnc_destroy_cnext(%struct.ubifs_info* %0) #0 {
  %2 = alloca %struct.ubifs_info*, align 8
  %3 = alloca %struct.ubifs_znode*, align 8
  %4 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %2, align 8
  %5 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %6 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %5, i32 0, i32 1
  %7 = load %struct.ubifs_znode*, %struct.ubifs_znode** %6, align 8
  %8 = icmp ne %struct.ubifs_znode* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %45

10:                                               ; preds = %1
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %13 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @COMMIT_BROKEN, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ubifs_assert(%struct.ubifs_info* %11, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 1
  %21 = load %struct.ubifs_znode*, %struct.ubifs_znode** %20, align 8
  store %struct.ubifs_znode* %21, %struct.ubifs_znode** %3, align 8
  br label %22

22:                                               ; preds = %43, %10
  %23 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  store %struct.ubifs_znode* %23, %struct.ubifs_znode** %4, align 8
  %24 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %25 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %24, i32 0, i32 0
  %26 = load %struct.ubifs_znode*, %struct.ubifs_znode** %25, align 8
  store %struct.ubifs_znode* %26, %struct.ubifs_znode** %3, align 8
  %27 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %28 = call i64 @ubifs_zn_obsolete(%struct.ubifs_znode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.ubifs_znode*, %struct.ubifs_znode** %4, align 8
  %32 = call i32 @kfree(%struct.ubifs_znode* %31)
  br label %33

33:                                               ; preds = %30, %22
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %36 = icmp ne %struct.ubifs_znode* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.ubifs_znode*, %struct.ubifs_znode** %3, align 8
  %39 = load %struct.ubifs_info*, %struct.ubifs_info** %2, align 8
  %40 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %39, i32 0, i32 1
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %40, align 8
  %42 = icmp ne %struct.ubifs_znode* %38, %41
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %22, label %45

45:                                               ; preds = %9, %43
  ret void
}

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i64 @ubifs_zn_obsolete(%struct.ubifs_znode*) #1

declare dso_local i32 @kfree(%struct.ubifs_znode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
