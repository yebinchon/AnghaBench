; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output_resume.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_output.c_xfrm_output_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.net*, i32, %struct.sk_buff*)*, i32 }

@NF_INET_POST_ROUTING = common dso_local global i32 0, align 4
@xfrm_output2 = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_output_resume(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.net* @xs_net(i32 %10)
  store %struct.net* %11, %struct.net** %6, align 8
  br label %12

12:                                               ; preds = %79, %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @xfrm_output_one(%struct.sk_buff* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %80

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @nf_reset_ct(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.net*, i32, %struct.sk_buff*)*, i32 (%struct.net*, i32, %struct.sk_buff*)** %27, align 8
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 %28(%struct.net* %29, i32 %32, %struct.sk_buff* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 1
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  br label %87

41:                                               ; preds = %20
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  %48 = load %struct.net*, %struct.net** %6, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @dst_output(%struct.net* %48, i32 %51, %struct.sk_buff* %52)
  store i32 %53, i32* %3, align 4
  br label %89

54:                                               ; preds = %41
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NF_INET_POST_ROUTING, align 4
  %62 = load %struct.net*, %struct.net** %6, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call %struct.TYPE_4__* @skb_dst(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @xfrm_output2, align 4
  %72 = call i32 @nf_hook(i32 %60, i32 %61, %struct.net* %62, i32 %65, %struct.sk_buff* %66, i32* null, i32 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %54
  br label %87

79:                                               ; preds = %54
  br label %12

80:                                               ; preds = %12
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @EINPROGRESS, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %78, %40
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %47
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.net* @xs_net(i32) #1

declare dso_local %struct.TYPE_4__* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xfrm_output_one(%struct.sk_buff*, i32) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dst_output(%struct.net*, i32, %struct.sk_buff*) #1

declare dso_local i32 @nf_hook(i32, i32, %struct.net*, i32, %struct.sk_buff*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
