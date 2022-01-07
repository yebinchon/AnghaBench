; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_nnode_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt_commit.c_nnode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_nnode = type { i32 }
%struct.ubifs_info = type { %struct.ubifs_nnode* }

@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubifs_nnode* (%struct.ubifs_info*, i32)* @nnode_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubifs_nnode* @nnode_lookup(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_nnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %12 = icmp ne %struct.ubifs_nnode* %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %14, i32* null, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.ubifs_nnode* @ERR_PTR(i32 %19)
  store %struct.ubifs_nnode* %20, %struct.ubifs_nnode** %3, align 8
  br label %50

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %24 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %23, i32 0, i32 0
  %25 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %24, align 8
  store %struct.ubifs_nnode* %25, %struct.ubifs_nnode** %8, align 8
  br label %26

26:                                               ; preds = %22, %47
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = ashr i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %26
  br label %48

37:                                               ; preds = %26
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.ubifs_nnode* @ubifs_get_nnode(%struct.ubifs_info* %38, %struct.ubifs_nnode* %39, i32 %40)
  store %struct.ubifs_nnode* %41, %struct.ubifs_nnode** %8, align 8
  %42 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %43 = call i64 @IS_ERR(%struct.ubifs_nnode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  store %struct.ubifs_nnode* %46, %struct.ubifs_nnode** %3, align 8
  br label %50

47:                                               ; preds = %37
  br label %26

48:                                               ; preds = %36
  %49 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  store %struct.ubifs_nnode* %49, %struct.ubifs_nnode** %3, align 8
  br label %50

50:                                               ; preds = %48, %45, %18
  %51 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %3, align 8
  ret %struct.ubifs_nnode* %51
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.ubifs_nnode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_nnode* @ubifs_get_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_nnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
