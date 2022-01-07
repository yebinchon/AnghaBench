; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.gui.c_set_colors.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/extr_nconf.gui.c_set_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_colors() #0 {
  %1 = call i32 (...) @start_color()
  %2 = call i32 (...) @use_default_colors()
  %3 = call i32 (...) @set_normal_colors()
  %4 = call i64 (...) @has_colors()
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @normal_color_theme()
  br label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @no_colors_theme()
  br label %10

10:                                               ; preds = %8, %6
  ret void
}

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @set_normal_colors(...) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @normal_color_theme(...) #1

declare dso_local i32 @no_colors_theme(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
