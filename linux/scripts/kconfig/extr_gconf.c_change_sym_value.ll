; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_change_sym_value.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_gconf.c_change_sym_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { %struct.symbol* }
%struct.symbol = type { i32 }

@COL_NO = common dso_local global i64 0, align 8
@no = common dso_local global i32 0, align 4
@COL_MOD = common dso_local global i64 0, align 8
@mod = common dso_local global i32 0, align 4
@COL_YES = common dso_local global i64 0, align 8
@yes = common dso_local global i32 0, align 4
@view_mode = common dso_local global i32 0, align 4
@FULL_VIEW = common dso_local global i32 0, align 4
@rootmenu = common dso_local global i32 0, align 4
@SPLIT_VIEW = common dso_local global i32 0, align 4
@browsed = common dso_local global i32* null, align 8
@SINGLE_VIEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*, i64)* @change_sym_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_sym_value(%struct.menu* %0, i64 %1) #0 {
  %3 = alloca %struct.menu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca i32, align 4
  store %struct.menu* %0, %struct.menu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.menu*, %struct.menu** %3, align 8
  %8 = getelementptr inbounds %struct.menu, %struct.menu* %7, i32 0, i32 0
  %9 = load %struct.symbol*, %struct.symbol** %8, align 8
  store %struct.symbol* %9, %struct.symbol** %5, align 8
  %10 = load %struct.symbol*, %struct.symbol** %5, align 8
  %11 = icmp ne %struct.symbol* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %72

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @COL_NO, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @no, align 4
  store i32 %18, i32* %6, align 4
  br label %34

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @COL_MOD, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @mod, align 4
  store i32 %24, i32* %6, align 4
  br label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @COL_YES, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @yes, align 4
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %25
  br label %72

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %23
  br label %34

34:                                               ; preds = %33, %17
  %35 = load %struct.symbol*, %struct.symbol** %5, align 8
  %36 = call i32 @sym_get_type(%struct.symbol* %35)
  switch i32 %36, label %71 [
    i32 132, label %37
    i32 128, label %37
    i32 130, label %70
    i32 131, label %70
    i32 129, label %70
  ]

37:                                               ; preds = %34, %34
  %38 = load %struct.symbol*, %struct.symbol** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @sym_tristate_within_range(%struct.symbol* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @yes, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %37
  %45 = load %struct.symbol*, %struct.symbol** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @sym_set_tristate_value(%struct.symbol* %45, i32 %46)
  %48 = load i32, i32* @view_mode, align 4
  %49 = load i32, i32* @FULL_VIEW, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @update_tree(i32* @rootmenu, i32* null)
  br label %69

53:                                               ; preds = %44
  %54 = load i32, i32* @view_mode, align 4
  %55 = load i32, i32* @SPLIT_VIEW, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32*, i32** @browsed, align 8
  %59 = call i32 @update_tree(i32* %58, i32* null)
  %60 = call i32 (...) @display_list()
  br label %68

61:                                               ; preds = %53
  %62 = load i32, i32* @view_mode, align 4
  %63 = load i32, i32* @SINGLE_VIEW, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = call i32 (...) @display_tree_part()
  br label %67

67:                                               ; preds = %65, %61
  br label %68

68:                                               ; preds = %67, %57
  br label %69

69:                                               ; preds = %68, %51
  br label %72

70:                                               ; preds = %34, %34, %34
  br label %71

71:                                               ; preds = %34, %70
  br label %72

72:                                               ; preds = %12, %31, %71, %69
  ret void
}

declare dso_local i32 @sym_get_type(%struct.symbol*) #1

declare dso_local i32 @sym_tristate_within_range(%struct.symbol*, i32) #1

declare dso_local i32 @sym_set_tristate_value(%struct.symbol*, i32) #1

declare dso_local i32 @update_tree(i32*, i32*) #1

declare dso_local i32 @display_list(...) #1

declare dso_local i32 @display_tree_part(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
