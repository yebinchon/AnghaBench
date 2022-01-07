; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pnode_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_ubifs_pnode_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_pnode = type { i32 }
%struct.ubifs_info = type { i32, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { i32 }

@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubifs_pnode* @ubifs_pnode_lookup(%struct.ubifs_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ubifs_pnode*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %12 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %11, i32 0, i32 1
  %13 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %12, align 8
  %14 = icmp ne %struct.ubifs_nnode* %13, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %17 = call i32 @ubifs_read_nnode(%struct.ubifs_info* %16, i32* null, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.ubifs_pnode* @ERR_PTR(i32 %21)
  store %struct.ubifs_pnode* %22, %struct.ubifs_pnode** %3, align 8
  br label %77

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %29 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %28, i32 0, i32 1
  %30 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %29, align 8
  store %struct.ubifs_nnode* %30, %struct.ubifs_nnode** %10, align 8
  %31 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %32 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %35 = mul nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %63, %24
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %66

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.ubifs_nnode* @ubifs_get_nnode(%struct.ubifs_info* %52, %struct.ubifs_nnode* %53, i32 %54)
  store %struct.ubifs_nnode* %55, %struct.ubifs_nnode** %10, align 8
  %56 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %57 = call i64 @IS_ERR(%struct.ubifs_nnode* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %61 = call %struct.ubifs_pnode* @ERR_CAST(%struct.ubifs_nnode* %60)
  store %struct.ubifs_pnode* %61, %struct.ubifs_pnode** %3, align 8
  br label %77

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %36

66:                                               ; preds = %36
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %71 = sub nsw i32 %70, 1
  %72 = and i32 %69, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %74 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info* %73, %struct.ubifs_nnode* %74, i32 %75)
  store %struct.ubifs_pnode* %76, %struct.ubifs_pnode** %3, align 8
  br label %77

77:                                               ; preds = %66, %59, %20
  %78 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %3, align 8
  ret %struct.ubifs_pnode* %78
}

declare dso_local i32 @ubifs_read_nnode(%struct.ubifs_info*, i32*, i32) #1

declare dso_local %struct.ubifs_pnode* @ERR_PTR(i32) #1

declare dso_local %struct.ubifs_nnode* @ubifs_get_nnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_nnode*) #1

declare dso_local %struct.ubifs_pnode* @ERR_CAST(%struct.ubifs_nnode*) #1

declare dso_local %struct.ubifs_pnode* @ubifs_get_pnode(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
