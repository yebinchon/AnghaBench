; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__calc_lines.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_annotate.c_symbol__calc_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.map = type { i32 }
%struct.rb_root = type { i32 }
%struct.annotation_options = type { i32 }
%struct.annotation = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.symbol*, %struct.map*, %struct.rb_root*, %struct.annotation_options*)* @symbol__calc_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symbol__calc_lines(%struct.symbol* %0, %struct.map* %1, %struct.rb_root* %2, %struct.annotation_options* %3) #0 {
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.map*, align 8
  %7 = alloca %struct.rb_root*, align 8
  %8 = alloca %struct.annotation_options*, align 8
  %9 = alloca %struct.annotation*, align 8
  store %struct.symbol* %0, %struct.symbol** %5, align 8
  store %struct.map* %1, %struct.map** %6, align 8
  store %struct.rb_root* %2, %struct.rb_root** %7, align 8
  store %struct.annotation_options* %3, %struct.annotation_options** %8, align 8
  %10 = load %struct.symbol*, %struct.symbol** %5, align 8
  %11 = call %struct.annotation* @symbol__annotation(%struct.symbol* %10)
  store %struct.annotation* %11, %struct.annotation** %9, align 8
  %12 = load %struct.annotation*, %struct.annotation** %9, align 8
  %13 = load %struct.map*, %struct.map** %6, align 8
  %14 = load %struct.rb_root*, %struct.rb_root** %7, align 8
  %15 = load %struct.annotation_options*, %struct.annotation_options** %8, align 8
  %16 = call i32 @annotation__calc_lines(%struct.annotation* %12, %struct.map* %13, %struct.rb_root* %14, %struct.annotation_options* %15)
  ret void
}

declare dso_local %struct.annotation* @symbol__annotation(%struct.symbol*) #1

declare dso_local i32 @annotation__calc_lines(%struct.annotation*, %struct.map*, %struct.rb_root*, %struct.annotation_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
