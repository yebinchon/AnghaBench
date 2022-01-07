; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_call_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_call_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 (%struct.wiphy*, %struct.regulatory_request*)* }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request.0*)* @reg_call_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_call_notifier(%struct.wiphy* %0, %struct.regulatory_request.0* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request.0*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request.0* %1, %struct.regulatory_request.0** %4, align 8
  %5 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %6 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %5, i32 0, i32 0
  %7 = load i32 (%struct.wiphy*, %struct.regulatory_request*)*, i32 (%struct.wiphy*, %struct.regulatory_request*)** %6, align 8
  %8 = icmp ne i32 (%struct.wiphy*, %struct.regulatory_request*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %11 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %10, i32 0, i32 0
  %12 = load i32 (%struct.wiphy*, %struct.regulatory_request*)*, i32 (%struct.wiphy*, %struct.regulatory_request*)** %11, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %14 = load %struct.regulatory_request.0*, %struct.regulatory_request.0** %4, align 8
  %15 = bitcast %struct.regulatory_request.0* %14 to %struct.regulatory_request*
  %16 = call i32 %12(%struct.wiphy* %13, %struct.regulatory_request* %15)
  br label %17

17:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
