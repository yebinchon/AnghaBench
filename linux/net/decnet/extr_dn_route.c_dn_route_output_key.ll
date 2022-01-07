; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_output_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_dn_route.c_dn_route_output_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.flowidn = type { i64 }

@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_entry**, %struct.flowidn*, i32)* @dn_route_output_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_route_output_key(%struct.dst_entry** %0, %struct.flowidn* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry**, align 8
  %5 = alloca %struct.flowidn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dst_entry** %0, %struct.dst_entry*** %4, align 8
  store %struct.flowidn* %1, %struct.flowidn** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  %9 = load %struct.flowidn*, %struct.flowidn** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @__dn_route_output_key(%struct.dst_entry** %8, %struct.flowidn* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %3
  %15 = load %struct.flowidn*, %struct.flowidn** %5, align 8
  %16 = getelementptr inbounds %struct.flowidn, %struct.flowidn* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  %21 = load %struct.dst_entry*, %struct.dst_entry** %20, align 8
  %22 = load %struct.flowidn*, %struct.flowidn** %5, align 8
  %23 = call i32 @flowidn_to_flowi(%struct.flowidn* %22)
  %24 = call %struct.dst_entry* @xfrm_lookup(i32* @init_net, %struct.dst_entry* %21, i32 %23, i32* null, i32 0)
  %25 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  store %struct.dst_entry* %24, %struct.dst_entry** %25, align 8
  %26 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  %27 = load %struct.dst_entry*, %struct.dst_entry** %26, align 8
  %28 = call i64 @IS_ERR(%struct.dst_entry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %19
  %31 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  %32 = load %struct.dst_entry*, %struct.dst_entry** %31, align 8
  %33 = call i32 @PTR_ERR(%struct.dst_entry* %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.dst_entry**, %struct.dst_entry*** %4, align 8
  store %struct.dst_entry* null, %struct.dst_entry** %34, align 8
  br label %35

35:                                               ; preds = %30, %19
  br label %36

36:                                               ; preds = %35, %14, %3
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @__dn_route_output_key(%struct.dst_entry**, %struct.flowidn*, i32) #1

declare dso_local %struct.dst_entry* @xfrm_lookup(i32*, %struct.dst_entry*, i32, i32*, i32) #1

declare dso_local i32 @flowidn_to_flowi(%struct.flowidn*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
