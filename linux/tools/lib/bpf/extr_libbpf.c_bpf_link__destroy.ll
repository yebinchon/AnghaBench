; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_link__destroy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_libbpf.c_bpf_link__destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_link = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_link__destroy(%struct.bpf_link* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_link*, align 8
  %4 = alloca i32, align 4
  store %struct.bpf_link* %0, %struct.bpf_link** %3, align 8
  %5 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  %6 = icmp ne %struct.bpf_link* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

8:                                                ; preds = %1
  %9 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  %10 = getelementptr inbounds %struct.bpf_link, %struct.bpf_link* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.bpf_link*)**
  %12 = load i32 (%struct.bpf_link*)*, i32 (%struct.bpf_link*)** %11, align 8
  %13 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  %14 = call i32 %12(%struct.bpf_link* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.bpf_link*, %struct.bpf_link** %3, align 8
  %16 = call i32 @free(%struct.bpf_link* %15)
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %8, %7
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @free(%struct.bpf_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
