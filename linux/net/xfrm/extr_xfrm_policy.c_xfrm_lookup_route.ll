; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_lookup_route.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_lookup_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.dst_entry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.flowi = type { i32 }
%struct.sock = type { i32 }

@XFRM_LOOKUP_QUEUE = common dso_local global i32 0, align 4
@XFRM_LOOKUP_KEEP_DST_REF = common dso_local global i32 0, align 4
@EREMOTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @xfrm_lookup_route(%struct.net* %0, %struct.dst_entry* %1, %struct.flowi* %2, %struct.sock* %3, i32 %4) #0 {
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dst_entry*, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %8, align 8
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store %struct.sock* %3, %struct.sock** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.net*, %struct.net** %7, align 8
  %14 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %15 = load %struct.flowi*, %struct.flowi** %9, align 8
  %16 = load %struct.sock*, %struct.sock** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @XFRM_LOOKUP_QUEUE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @XFRM_LOOKUP_KEEP_DST_REF, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.dst_entry* @xfrm_lookup(%struct.net* %13, %struct.dst_entry* %14, %struct.flowi* %15, %struct.sock* %16, i32 %21)
  store %struct.dst_entry* %22, %struct.dst_entry** %12, align 8
  %23 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %24 = call i64 @IS_ERR(%struct.dst_entry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %5
  %27 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %28 = call i32 @PTR_ERR(%struct.dst_entry* %27)
  %29 = load i32, i32* @EREMOTE, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.net*, %struct.net** %7, align 8
  %34 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %35 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %40 = call %struct.dst_entry* @make_blackhole(%struct.net* %33, i32 %38, %struct.dst_entry* %39)
  store %struct.dst_entry* %40, %struct.dst_entry** %6, align 8
  br label %50

41:                                               ; preds = %26, %5
  %42 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  %43 = call i64 @IS_ERR(%struct.dst_entry* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %47 = call i32 @dst_release(%struct.dst_entry* %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.dst_entry*, %struct.dst_entry** %12, align 8
  store %struct.dst_entry* %49, %struct.dst_entry** %6, align 8
  br label %50

50:                                               ; preds = %48, %32
  %51 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  ret %struct.dst_entry* %51
}

declare dso_local %struct.dst_entry* @xfrm_lookup(%struct.net*, %struct.dst_entry*, %struct.flowi*, %struct.sock*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_entry*) #1

declare dso_local %struct.dst_entry* @make_blackhole(%struct.net*, i32, %struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
