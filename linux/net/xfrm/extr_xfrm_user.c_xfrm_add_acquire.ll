; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_add_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_policy = type { i32, %struct.xfrm_tmpl*, %struct.TYPE_4__ }
%struct.xfrm_tmpl = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.xfrm_user_tmpl = type { i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_user_acquire = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.xfrm_state = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@XFRMA_TMPL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @xfrm_add_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_add_acquire(%struct.sk_buff* %0, %struct.nlmsghdr* %1, %struct.nlattr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.xfrm_policy*, align 8
  %10 = alloca %struct.xfrm_user_tmpl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.xfrm_mark, align 4
  %14 = alloca %struct.xfrm_user_acquire*, align 8
  %15 = alloca %struct.xfrm_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.net* @sock_net(i32 %20)
  store %struct.net* %21, %struct.net** %8, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %23 = load i64, i64* @XFRMA_TMPL, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  store %struct.nlattr* %25, %struct.nlattr** %12, align 8
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %27 = call %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr* %26)
  store %struct.xfrm_user_acquire* %27, %struct.xfrm_user_acquire** %14, align 8
  %28 = load %struct.net*, %struct.net** %8, align 8
  %29 = call %struct.xfrm_state* @xfrm_state_alloc(%struct.net* %28)
  store %struct.xfrm_state* %29, %struct.xfrm_state** %15, align 8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %16, align 4
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %33 = icmp ne %struct.xfrm_state* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  br label %156

35:                                               ; preds = %3
  %36 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %37 = call i32 @xfrm_mark_get(%struct.nlattr** %36, %struct.xfrm_mark* %13)
  %38 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %39 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %38, i32 0, i32 6
  %40 = call i32 @verify_newpolicy_info(i32* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %153

44:                                               ; preds = %35
  %45 = load %struct.net*, %struct.net** %8, align 8
  %46 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %47 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %46, i32 0, i32 6
  %48 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %49 = call %struct.xfrm_policy* @xfrm_policy_construct(%struct.net* %45, i32* %47, %struct.nlattr** %48, i32* %16)
  store %struct.xfrm_policy* %49, %struct.xfrm_policy** %9, align 8
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %51 = icmp ne %struct.xfrm_policy* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %153

53:                                               ; preds = %44
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 1
  %56 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %57 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %56, i32 0, i32 5
  %58 = call i32 @memcpy(i32* %55, i32* %57, i32 4)
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %60 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 3
  %62 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %63 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %62, i32 0, i32 4
  %64 = call i32 @memcpy(i32* %61, i32* %63, i32 4)
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %66 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %65, i32 0, i32 3
  %67 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %68 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %67, i32 0, i32 3
  %69 = call i32 @memcpy(i32* %66, i32* %68, i32 4)
  %70 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %13, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %76 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 %71, i32* %77, align 4
  %78 = getelementptr inbounds %struct.xfrm_mark, %struct.xfrm_mark* %13, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %84 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i32 %79, i32* %85, align 8
  %86 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %87 = call %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr* %86)
  store %struct.xfrm_user_tmpl* %87, %struct.xfrm_user_tmpl** %10, align 8
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %143, %53
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %91 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %148

94:                                               ; preds = %88
  %95 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %96 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %95, i32 0, i32 1
  %97 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %97, i64 %99
  store %struct.xfrm_tmpl* %100, %struct.xfrm_tmpl** %17, align 8
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 1
  %103 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %104 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %103, i32 0, i32 5
  %105 = call i32 @memcpy(i32* %102, i32* %104, i32 4)
  %106 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %107 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  %112 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %113 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %116 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %119 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  %124 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %125 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %128 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %130 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %133 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.xfrm_user_acquire*, %struct.xfrm_user_acquire** %14, align 8
  %135 = getelementptr inbounds %struct.xfrm_user_acquire, %struct.xfrm_user_acquire* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %138 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 4
  %139 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %140 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %17, align 8
  %141 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %142 = call i32 @km_query(%struct.xfrm_state* %139, %struct.xfrm_tmpl* %140, %struct.xfrm_policy* %141)
  store i32 %142, i32* %16, align 4
  br label %143

143:                                              ; preds = %94
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  %146 = load %struct.xfrm_user_tmpl*, %struct.xfrm_user_tmpl** %10, align 8
  %147 = getelementptr inbounds %struct.xfrm_user_tmpl, %struct.xfrm_user_tmpl* %146, i32 1
  store %struct.xfrm_user_tmpl* %147, %struct.xfrm_user_tmpl** %10, align 8
  br label %88

148:                                              ; preds = %88
  %149 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %150 = call i32 @xfrm_state_free(%struct.xfrm_state* %149)
  %151 = load %struct.xfrm_policy*, %struct.xfrm_policy** %9, align 8
  %152 = call i32 @kfree(%struct.xfrm_policy* %151)
  store i32 0, i32* %4, align 4
  br label %158

153:                                              ; preds = %52, %43
  %154 = load %struct.xfrm_state*, %struct.xfrm_state** %15, align 8
  %155 = call i32 @xfrm_state_free(%struct.xfrm_state* %154)
  br label %156

156:                                              ; preds = %153, %34
  %157 = load i32, i32* %16, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %156, %148
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.xfrm_user_acquire* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_alloc(%struct.net*) #1

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i32 @verify_newpolicy_info(i32*) #1

declare dso_local %struct.xfrm_policy* @xfrm_policy_construct(%struct.net*, i32*, %struct.nlattr**, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.xfrm_user_tmpl* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @km_query(%struct.xfrm_state*, %struct.xfrm_tmpl*, %struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_state_free(%struct.xfrm_state*) #1

declare dso_local i32 @kfree(%struct.xfrm_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
