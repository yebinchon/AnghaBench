; ModuleID = '/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_lladdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/6lowpan/extr_iphc.c_lowpan_iphc_uncompress_lladdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.in6_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.in6_addr*, i8*)* @lowpan_iphc_uncompress_lladdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lowpan_iphc_uncompress_lladdr(%struct.net_device* %0, %struct.in6_addr* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 129, label %10
    i32 128, label %14
  ]

10:                                               ; preds = %3
  %11 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @lowpan_iphc_uncompress_eui48_lladdr(%struct.in6_addr* %11, i8* %12)
  br label %20

14:                                               ; preds = %3
  %15 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @lowpan_iphc_uncompress_eui64_lladdr(%struct.in6_addr* %15, i8* %16)
  br label %20

18:                                               ; preds = %3
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  br label %20

20:                                               ; preds = %18, %14, %10
  ret void
}

declare dso_local i32 @lowpan_iphc_uncompress_eui48_lladdr(%struct.in6_addr*, i8*) #1

declare dso_local i32 @lowpan_iphc_uncompress_eui64_lladdr(%struct.in6_addr*, i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
