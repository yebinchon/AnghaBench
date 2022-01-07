; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dnet_addr_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_rules.c_dnet_addr_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowidn = type { i32 }
%struct.dn_fib_res = type { i32, i32* }
%struct.dn_fib_table = type { i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res.0*)* }
%struct.dn_fib_res.0 = type opaque

@RTN_UNICAST = common dso_local global i32 0, align 4
@RT_TABLE_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dnet_addr_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flowidn, align 4
  %4 = alloca %struct.dn_fib_res, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dn_fib_table*, align 8
  store i32 %0, i32* %2, align 4
  %7 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %3, i32 0, i32 0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* @RTN_UNICAST, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @RT_TABLE_LOCAL, align 4
  %11 = call %struct.dn_fib_table* @dn_fib_get_table(i32 %10, i32 0)
  store %struct.dn_fib_table* %11, %struct.dn_fib_table** %6, align 8
  %12 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %4, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = load %struct.dn_fib_table*, %struct.dn_fib_table** %6, align 8
  %14 = icmp ne %struct.dn_fib_table* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load %struct.dn_fib_table*, %struct.dn_fib_table** %6, align 8
  %17 = getelementptr inbounds %struct.dn_fib_table, %struct.dn_fib_table* %16, i32 0, i32 0
  %18 = load i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res.0*)*, i32 (%struct.dn_fib_table*, %struct.flowidn*, %struct.dn_fib_res.0*)** %17, align 8
  %19 = load %struct.dn_fib_table*, %struct.dn_fib_table** %6, align 8
  %20 = bitcast %struct.dn_fib_res* %4 to %struct.dn_fib_res.0*
  %21 = call i32 %18(%struct.dn_fib_table* %19, %struct.flowidn* %3, %struct.dn_fib_res.0* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.dn_fib_res, %struct.dn_fib_res* %4, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = call i32 @dn_fib_res_put(%struct.dn_fib_res* %4)
  br label %27

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local %struct.dn_fib_table* @dn_fib_get_table(i32, i32) #1

declare dso_local i32 @dn_fib_res_put(%struct.dn_fib_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
