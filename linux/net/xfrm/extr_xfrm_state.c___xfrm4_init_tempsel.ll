; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm4_init_tempsel.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_state.c___xfrm4_init_tempsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_selector = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.flowi = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.flowi4 }
%struct.flowi4 = type { i32, i32, i32, i32, i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_selector*, %struct.flowi*)* @__xfrm4_init_tempsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm4_init_tempsel(%struct.xfrm_selector* %0, %struct.flowi* %1) #0 {
  %3 = alloca %struct.xfrm_selector*, align 8
  %4 = alloca %struct.flowi*, align 8
  %5 = alloca %struct.flowi4*, align 8
  store %struct.xfrm_selector* %0, %struct.xfrm_selector** %3, align 8
  store %struct.flowi* %1, %struct.flowi** %4, align 8
  %6 = load %struct.flowi*, %struct.flowi** %4, align 8
  %7 = getelementptr inbounds %struct.flowi, %struct.flowi* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.flowi4* %8, %struct.flowi4** %5, align 8
  %9 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %10 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %13 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %16 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %19 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.flowi*, %struct.flowi** %4, align 8
  %22 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %23 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %22, i32 0, i32 2
  %24 = call i32 @xfrm_flowi_dport(%struct.flowi* %21, i32* %23)
  %25 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %26 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %25, i32 0, i32 8
  store i32 %24, i32* %26, align 8
  %27 = call i8* @htons(i32 65535)
  %28 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %28, i32 0, i32 7
  store i8* %27, i8** %29, align 8
  %30 = load %struct.flowi*, %struct.flowi** %4, align 8
  %31 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %31, i32 0, i32 2
  %33 = call i32 @xfrm_flowi_sport(%struct.flowi* %30, i32* %32)
  %34 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %35 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = call i8* @htons(i32 65535)
  %37 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %37, i32 0, i32 5
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* @AF_INET, align 4
  %40 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %41 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %43 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %42, i32 0, i32 0
  store i32 32, i32* %43, align 8
  %44 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %45 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %44, i32 0, i32 1
  store i32 32, i32* %45, align 4
  %46 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %47 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %50 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.flowi4*, %struct.flowi4** %5, align 8
  %52 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xfrm_selector*, %struct.xfrm_selector** %3, align 8
  %55 = getelementptr inbounds %struct.xfrm_selector, %struct.xfrm_selector* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 8
  ret void
}

declare dso_local i32 @xfrm_flowi_dport(%struct.flowi*, i32*) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @xfrm_flowi_sport(%struct.flowi*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
