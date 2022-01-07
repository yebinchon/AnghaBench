; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_bpf_prog_linfo__free.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf_prog_linfo.c_bpf_prog_linfo__free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_prog_linfo = type { %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_prog_linfo__free(%struct.bpf_prog_linfo* %0) #0 {
  %2 = alloca %struct.bpf_prog_linfo*, align 8
  store %struct.bpf_prog_linfo* %0, %struct.bpf_prog_linfo** %2, align 8
  %3 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %4 = icmp ne %struct.bpf_prog_linfo* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %25

6:                                                ; preds = %1
  %7 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %8 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %7, i32 0, i32 3
  %9 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %8, align 8
  %10 = call i32 @free(%struct.bpf_prog_linfo* %9)
  %11 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %11, i32 0, i32 2
  %13 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %12, align 8
  %14 = call i32 @free(%struct.bpf_prog_linfo* %13)
  %15 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %16 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %15, i32 0, i32 1
  %17 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %16, align 8
  %18 = call i32 @free(%struct.bpf_prog_linfo* %17)
  %19 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %20 = getelementptr inbounds %struct.bpf_prog_linfo, %struct.bpf_prog_linfo* %19, i32 0, i32 0
  %21 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %20, align 8
  %22 = call i32 @free(%struct.bpf_prog_linfo* %21)
  %23 = load %struct.bpf_prog_linfo*, %struct.bpf_prog_linfo** %2, align 8
  %24 = call i32 @free(%struct.bpf_prog_linfo* %23)
  br label %25

25:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @free(%struct.bpf_prog_linfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
