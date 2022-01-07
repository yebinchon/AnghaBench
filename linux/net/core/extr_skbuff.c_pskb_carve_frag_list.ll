; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_pskb_carve_frag_list.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_skbuff.c_pskb_carve_frag_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.sk_buff* }
%struct.skb_shared_info = type { %struct.sk_buff* }

@.str = private unnamed_addr constant [34 x i8] c"Not enough bytes to eat. Want %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.skb_shared_info*, i32, i32)* @pskb_carve_frag_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pskb_carve_frag_list(%struct.sk_buff* %0, %struct.skb_shared_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.skb_shared_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.skb_shared_info* %1, %struct.skb_shared_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %14 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  br label %16

16:                                               ; preds = %73, %4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %102

24:                                               ; preds = %16
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load %struct.sk_buff*, %struct.sk_buff** %37, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %10, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %39, %struct.sk_buff** %12, align 8
  br label %72

40:                                               ; preds = %24
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = call i64 @skb_shared(%struct.sk_buff* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %11, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %102

53:                                               ; preds = %44
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %55, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %10, align 8
  br label %60

58:                                               ; preds = %40
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %12, align 8
  br label %60

60:                                               ; preds = %58, %53
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i64 @pskb_carve(%struct.sk_buff* %61, i32 %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %68 = call i32 @kfree_skb(%struct.sk_buff* %67)
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %102

71:                                               ; preds = %60
  br label %76

72:                                               ; preds = %30
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %16, label %76

76:                                               ; preds = %73, %71
  br label %77

77:                                               ; preds = %83, %76
  %78 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %79 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %78, i32 0, i32 0
  %80 = load %struct.sk_buff*, %struct.sk_buff** %79, align 8
  store %struct.sk_buff* %80, %struct.sk_buff** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %82 = icmp ne %struct.sk_buff* %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load %struct.sk_buff*, %struct.sk_buff** %85, align 8
  %87 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %88 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %87, i32 0, i32 0
  store %struct.sk_buff* %86, %struct.sk_buff** %88, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  br label %77

91:                                               ; preds = %77
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = icmp ne %struct.sk_buff* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  store %struct.sk_buff* %95, %struct.sk_buff** %97, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %99 = load %struct.skb_shared_info*, %struct.skb_shared_info** %7, align 8
  %100 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %99, i32 0, i32 0
  store %struct.sk_buff* %98, %struct.sk_buff** %100, align 8
  br label %101

101:                                              ; preds = %94, %91
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %66, %50, %19
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @skb_shared(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i64 @pskb_carve(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
