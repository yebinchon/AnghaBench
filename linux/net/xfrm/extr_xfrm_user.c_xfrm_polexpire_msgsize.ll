; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_polexpire_msgsize.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_polexpire_msgsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*)* @xfrm_polexpire_msgsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_polexpire_msgsize(%struct.xfrm_policy* %0) #0 {
  %2 = alloca %struct.xfrm_policy*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %2, align 8
  %3 = call i32 @NLMSG_ALIGN(i32 4)
  %4 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %5 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = trunc i64 %8 to i32
  %10 = call i32 @nla_total_size(i32 %9)
  %11 = add i32 %3, %10
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %2, align 8
  %13 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @xfrm_user_sec_ctx_size(i32 %14)
  %16 = call i32 @nla_total_size(i32 %15)
  %17 = add i32 %11, %16
  %18 = call i32 @nla_total_size(i32 4)
  %19 = add i32 %17, %18
  %20 = call i32 (...) @userpolicy_type_attrsize()
  %21 = add i32 %19, %20
  ret i32 %21
}

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @nla_total_size(i32) #1

declare dso_local i32 @xfrm_user_sec_ctx_size(i32) #1

declare dso_local i32 @userpolicy_type_attrsize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
