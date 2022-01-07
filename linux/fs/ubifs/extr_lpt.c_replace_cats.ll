; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_replace_cats.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_replace_cats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_pnode*)* @replace_cats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replace_cats(%struct.ubifs_info* %0, %struct.ubifs_pnode* %1, %struct.ubifs_pnode* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_pnode*, align 8
  %6 = alloca %struct.ubifs_pnode*, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.ubifs_pnode* %1, %struct.ubifs_pnode** %5, align 8
  store %struct.ubifs_pnode* %2, %struct.ubifs_pnode** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %38, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  %13 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %14 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %41

23:                                               ; preds = %12
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %25 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %5, align 8
  %26 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %6, align 8
  %32 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = call i32 @ubifs_replace_cat(%struct.ubifs_info* %24, %struct.TYPE_3__* %30, %struct.TYPE_3__* %36)
  br label %38

38:                                               ; preds = %23
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %8

41:                                               ; preds = %22, %8
  ret void
}

declare dso_local i32 @ubifs_replace_cat(%struct.ubifs_info*, %struct.TYPE_3__*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
