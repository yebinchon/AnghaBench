; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_vmlinux_path__exit.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_symbol.c_vmlinux_path__exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmlinux_path__nr_entries = common dso_local global i64 0, align 8
@vmlinux_path = common dso_local global i32***** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vmlinux_path__exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmlinux_path__exit() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %3 = add nsw i64 %2, -1
  store i64 %3, i64* @vmlinux_path__nr_entries, align 8
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i32*****, i32****** @vmlinux_path, align 8
  %7 = load i64, i64* @vmlinux_path__nr_entries, align 8
  %8 = getelementptr inbounds i32****, i32***** %6, i64 %7
  %9 = bitcast i32***** %8 to i32******
  %10 = call i32 @zfree(i32****** %9)
  br label %1

11:                                               ; preds = %1
  store i64 0, i64* @vmlinux_path__nr_entries, align 8
  %12 = call i32 @zfree(i32****** @vmlinux_path)
  ret void
}

declare dso_local i32 @zfree(i32******) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
