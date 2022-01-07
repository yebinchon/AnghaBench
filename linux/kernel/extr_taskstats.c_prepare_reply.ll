; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_prepare_reply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_prepare_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32 }
%struct.sk_buff = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@taskstats_seqnum = common dso_local global i32 0, align 4
@family = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*, i32, %struct.sk_buff**, i64)* @prepare_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_reply(%struct.genl_info* %0, i32 %1, %struct.sk_buff** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.genl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff** %2, %struct.sk_buff*** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sk_buff* @genlmsg_new(i64 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %23 = icmp ne %struct.genl_info* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @taskstats_seqnum, align 4
  %26 = call i32 @this_cpu_inc_return(i32 %25)
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %12, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @genlmsg_put(%struct.sk_buff* %28, i32 0, i32 %29, i32* @family, i32 0, i32 %30)
  store i8* %31, i8** %11, align 8
  br label %37

32:                                               ; preds = %21
  %33 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %34 = load %struct.genl_info*, %struct.genl_info** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @genlmsg_put_reply(%struct.sk_buff* %33, %struct.genl_info* %34, i32* @family, i32 0, i32 %35)
  store i8* %36, i8** %11, align 8
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i8*, i8** %11, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = call i32 @nlmsg_free(%struct.sk_buff* %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %37
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  store %struct.sk_buff* %46, %struct.sk_buff** %47, align 8
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %40, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local i32 @this_cpu_inc_return(i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i8* @genlmsg_put_reply(%struct.sk_buff*, %struct.genl_info*, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
