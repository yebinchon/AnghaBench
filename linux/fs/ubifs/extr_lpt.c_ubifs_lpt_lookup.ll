; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_lpt_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_lprops = type { i32, i32, i32 }
%struct.ubifs_info = type { i32 }
%struct.ubifs_pnode = type { %struct.ubifs_lprops* }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"LEB %d, free %d, dirty %d, flags %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_lprops* @ubifs_lpt_lookup(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_lprops*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = call %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info* %14, i32 %17)
  store %struct.ubifs_pnode* %18, %struct.ubifs_pnode** %8, align 8
  %19 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %20 = call i64 @IS_ERR(%struct.ubifs_pnode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %24 = call %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode* %23)
  store %struct.ubifs_lprops* %24, %struct.ubifs_lprops** %3, align 8
  br label %62

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %28 = sub nsw i32 %27, 1
  %29 = and i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %32 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %31, i32 0, i32 0
  %33 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %33, i64 %35
  %37 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %40 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %39, i32 0, i32 0
  %41 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %41, i64 %43
  %45 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %48 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %47, i32 0, i32 0
  %49 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %49, i64 %51
  %53 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dbg_lp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %38, i32 %46, i32 %54)
  %56 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %8, align 8
  %57 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %56, i32 0, i32 0
  %58 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ubifs_lprops, %struct.ubifs_lprops* %58, i64 %60
  store %struct.ubifs_lprops* %61, %struct.ubifs_lprops** %3, align 8
  br label %62

62:                                               ; preds = %25, %22
  %63 = load %struct.ubifs_lprops*, %struct.ubifs_lprops** %3, align 8
  ret %struct.ubifs_lprops* %63
}

declare dso_local %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_pnode*) #1

declare dso_local %struct.ubifs_lprops* @ERR_CAST(%struct.ubifs_pnode*) #1

declare dso_local i32 @dbg_lp(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
