; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_make_reply.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_make_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@NLMSG_DONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @audit_make_reply(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.nlmsghdr*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @NLM_F_MULTI, align 4
  br label %24

23:                                               ; preds = %6
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 0, %23 ]
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NLMSG_DONE, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.sk_buff* @nlmsg_new(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %14, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff* %41, i32 0, i32 %42, i32 %43, i32 %44, i32 %45)
  store %struct.nlmsghdr* %46, %struct.nlmsghdr** %15, align 8
  %47 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %48 = icmp ne %struct.nlmsghdr* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %58

50:                                               ; preds = %40
  %51 = load %struct.nlmsghdr*, %struct.nlmsghdr** %15, align 8
  %52 = call i8* @nlmsg_data(%struct.nlmsghdr* %51)
  store i8* %52, i8** %16, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @memcpy(i8* %53, i8* %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %7, align 8
  br label %61

58:                                               ; preds = %49
  %59 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  br label %61

61:                                               ; preds = %58, %50, %39
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  ret %struct.sk_buff* %62
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
