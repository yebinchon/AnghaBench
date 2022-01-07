; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_add_option_defconfig_list.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_menu.c_menu_add_option_defconfig_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }

@sym_defconfig_list = common dso_local global %struct.TYPE_3__* null, align 8
@current_entry = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"trying to redefine defconfig symbol\00", align 1
@SYMBOL_NO_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu_add_option_defconfig_list() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sym_defconfig_list, align 8
  %2 = icmp ne %struct.TYPE_3__* %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_entry, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** @sym_defconfig_list, align 8
  br label %16

7:                                                ; preds = %0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sym_defconfig_list, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_entry, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp ne %struct.TYPE_3__* %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @zconf_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  br label %16

16:                                               ; preds = %15, %3
  %17 = load i32, i32* @SYMBOL_NO_WRITE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sym_defconfig_list, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local i32 @zconf_error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
