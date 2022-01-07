; ModuleID = '/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/gpio/extr_gpio-event-mon.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [463 x i8] c"Usage: gpio-event-mon [options]...\0AListen to events on GPIO lines, 0->1 1->0\0A  -n <name>  Listen on GPIOs on a named device (must be stated)\0A  -o <n>     Offset to monitor\0A  -d         Set line as open drain\0A  -s         Set line as open source\0A  -r         Listen for rising edges\0A  -f         Listen for falling edges\0A [-c <n>]    Do <n> loops (optional, infinite loop if not stated)\0A  -?         This helptext\0A\0AExample:\0Agpio-event-mon -n gpiochip0 -o 4 -r -f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([463 x i8], [463 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
