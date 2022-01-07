; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_hash.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_table.c_dn_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_zone = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dn_zone*)* @dn_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_hash(i32 %0, %struct.dn_zone* %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.dn_zone*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %0, i32* %6, align 4
  store %struct.dn_zone* %1, %struct.dn_zone** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  %10 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %11 = getelementptr inbounds %struct.dn_zone, %struct.dn_zone* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sub nsw i32 16, %12
  %14 = ashr i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 10
  %17 = load i32, i32* %5, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 6
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.dn_zone*, %struct.dn_zone** %4, align 8
  %24 = call i32 @DZ_HASHMASK(%struct.dn_zone* %23)
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @DZ_HASHMASK(%struct.dn_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
