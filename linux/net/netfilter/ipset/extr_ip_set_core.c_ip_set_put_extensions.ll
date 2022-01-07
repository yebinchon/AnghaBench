; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_put_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_put_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_set = type { i32 }

@IPSET_ATTR_TIMEOUT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_put_extensions(%struct.sk_buff* %0, %struct.ip_set* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ip_set*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.ip_set* %1, %struct.ip_set** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %12 = call i64 @SET_WITH_TIMEOUT(%struct.ip_set* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %17 = call i64* @ext_timeout(i8* %15, %struct.ip_set* %16)
  store i64* %17, i64** %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = load i32, i32* @IPSET_ATTR_TIMEOUT, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i64*, i64** %10, align 8
  %24 = call i64 @ip_set_timeout_get(i64* %23)
  br label %28

25:                                               ; preds = %14
  %26 = load i64*, i64** %10, align 8
  %27 = load i64, i64* %26, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i64 [ %24, %22 ], [ %27, %25 ]
  %30 = call i32 @htonl(i64 %29)
  %31 = call i64 @nla_put_net32(%struct.sk_buff* %18, i32 %19, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EMSGSIZE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %80

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %4
  %38 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %39 = call i64 @SET_WITH_COUNTER(%struct.ip_set* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %45 = call i32 @ext_counter(i8* %43, %struct.ip_set* %44)
  %46 = call i64 @ip_set_put_counter(%struct.sk_buff* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @EMSGSIZE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %80

51:                                               ; preds = %41, %37
  %52 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %53 = call i64 @SET_WITH_COMMENT(%struct.ip_set* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %59 = call i32 @ext_comment(i8* %57, %struct.ip_set* %58)
  %60 = call i64 @ip_set_put_comment(%struct.sk_buff* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EMSGSIZE, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %80

65:                                               ; preds = %55, %51
  %66 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %67 = call i64 @SET_WITH_SKBINFO(%struct.ip_set* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.ip_set*, %struct.ip_set** %7, align 8
  %73 = call i32 @ext_skbinfo(i8* %71, %struct.ip_set* %72)
  %74 = call i64 @ip_set_put_skbinfo(%struct.sk_buff* %70, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EMSGSIZE, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %80

79:                                               ; preds = %69, %65
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %76, %62, %48, %33
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @SET_WITH_TIMEOUT(%struct.ip_set*) #1

declare dso_local i64* @ext_timeout(i8*, %struct.ip_set*) #1

declare dso_local i64 @nla_put_net32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htonl(i64) #1

declare dso_local i64 @ip_set_timeout_get(i64*) #1

declare dso_local i64 @SET_WITH_COUNTER(%struct.ip_set*) #1

declare dso_local i64 @ip_set_put_counter(%struct.sk_buff*, i32) #1

declare dso_local i32 @ext_counter(i8*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_COMMENT(%struct.ip_set*) #1

declare dso_local i64 @ip_set_put_comment(%struct.sk_buff*, i32) #1

declare dso_local i32 @ext_comment(i8*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_SKBINFO(%struct.ip_set*) #1

declare dso_local i64 @ip_set_put_skbinfo(%struct.sk_buff*, i32) #1

declare dso_local i32 @ext_skbinfo(i8*, %struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
