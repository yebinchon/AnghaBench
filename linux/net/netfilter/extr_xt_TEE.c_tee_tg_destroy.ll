; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TEE.c_tee_tg_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TEE.c_tee_tg_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_tgdtor_param = type { %struct.xt_tee_tginfo*, i32 }
%struct.xt_tee_tginfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tee_net = type { i32 }

@tee_net_id = common dso_local global i32 0, align 4
@xt_tee_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_tgdtor_param*)* @tee_tg_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tee_tg_destroy(%struct.xt_tgdtor_param* %0) #0 {
  %2 = alloca %struct.xt_tgdtor_param*, align 8
  %3 = alloca %struct.tee_net*, align 8
  %4 = alloca %struct.xt_tee_tginfo*, align 8
  store %struct.xt_tgdtor_param* %0, %struct.xt_tgdtor_param** %2, align 8
  %5 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %6 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @tee_net_id, align 4
  %9 = call %struct.tee_net* @net_generic(i32 %7, i32 %8)
  store %struct.tee_net* %9, %struct.tee_net** %3, align 8
  %10 = load %struct.xt_tgdtor_param*, %struct.xt_tgdtor_param** %2, align 8
  %11 = getelementptr inbounds %struct.xt_tgdtor_param, %struct.xt_tgdtor_param* %10, i32 0, i32 0
  %12 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %11, align 8
  store %struct.xt_tee_tginfo* %12, %struct.xt_tee_tginfo** %4, align 8
  %13 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %4, align 8
  %14 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load %struct.tee_net*, %struct.tee_net** %3, align 8
  %19 = getelementptr inbounds %struct.tee_net, %struct.tee_net* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %4, align 8
  %22 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @list_del(i32* %24)
  %26 = load %struct.tee_net*, %struct.tee_net** %3, align 8
  %27 = getelementptr inbounds %struct.tee_net, %struct.tee_net* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %4, align 8
  %30 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @kfree(%struct.TYPE_2__* %31)
  br label %33

33:                                               ; preds = %17, %1
  %34 = call i32 @static_key_slow_dec(i32* @xt_tee_enabled)
  ret void
}

declare dso_local %struct.tee_net* @net_generic(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @static_key_slow_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
