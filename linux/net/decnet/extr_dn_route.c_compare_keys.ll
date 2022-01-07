; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_compare_keys.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_compare_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowidn = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flowidn*, %struct.flowidn*)* @compare_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_keys(%struct.flowidn* %0, %struct.flowidn* %1) #0 {
  %3 = alloca %struct.flowidn*, align 8
  %4 = alloca %struct.flowidn*, align 8
  store %struct.flowidn* %0, %struct.flowidn** %3, align 8
  store %struct.flowidn* %1, %struct.flowidn** %4, align 8
  %5 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %6 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %9 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = xor i32 %7, %10
  %12 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %13 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %16 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %14, %17
  %19 = or i32 %11, %18
  %20 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %21 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %24 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %22, %25
  %27 = or i32 %19, %26
  %28 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %29 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %32 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = or i32 %27, %34
  %36 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %37 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %40 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %38, %41
  %43 = or i32 %35, %42
  %44 = load %struct.flowidn*, %struct.flowidn** %3, align 8
  %45 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.flowidn*, %struct.flowidn** %4, align 8
  %48 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %46, %49
  %51 = or i32 %43, %50
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
