; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TEE.c_tee_tg4.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_TEE.c_tee_tg4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_tee_tginfo* }
%struct.xt_tee_tginfo = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @tee_tg4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tee_tg4(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_tee_tginfo*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %7 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %8 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %7, i32 0, i32 0
  %9 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %8, align 8
  store %struct.xt_tee_tginfo* %9, %struct.xt_tee_tginfo** %5, align 8
  %10 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %5, align 8
  %11 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = icmp ne %struct.TYPE_3__* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %5, align 8
  %16 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %14
  %22 = phi i32 [ %19, %14 ], [ 0, %20 ]
  store i32 %22, i32* %6, align 4
  %23 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %24 = call i32 @xt_net(%struct.xt_action_param* %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %27 = call i32 @xt_hooknum(%struct.xt_action_param* %26)
  %28 = load %struct.xt_tee_tginfo*, %struct.xt_tee_tginfo** %5, align 8
  %29 = getelementptr inbounds %struct.xt_tee_tginfo, %struct.xt_tee_tginfo* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nf_dup_ipv4(i32 %24, %struct.sk_buff* %25, i32 %27, i32* %30, i32 %31)
  %33 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %33
}

declare dso_local i32 @nf_dup_ipv4(i32, %struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @xt_net(%struct.xt_action_param*) #1

declare dso_local i32 @xt_hooknum(%struct.xt_action_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
