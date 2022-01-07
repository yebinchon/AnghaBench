; ModuleID = '/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/samples/uhid/extr_uhid-example.c_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhid_event = type { i32 }

@UHID_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uhid_event, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @memset(%struct.uhid_event* %3, i32 0, i32 4)
  %5 = load i32, i32* @UHID_DESTROY, align 4
  %6 = getelementptr inbounds %struct.uhid_event, %struct.uhid_event* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @uhid_write(i32 %7, %struct.uhid_event* %3)
  ret void
}

declare dso_local i32 @memset(%struct.uhid_event*, i32, i32) #1

declare dso_local i32 @uhid_write(i32, %struct.uhid_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
