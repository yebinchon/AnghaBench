; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_ipsecrequests.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_ipsecrequests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32 }
%struct.sadb_x_policy = type { i32 }
%struct.sadb_x_ipsecrequest = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.sadb_x_policy*)* @parse_ipsecrequests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipsecrequests(%struct.xfrm_policy* %0, %struct.sadb_x_policy* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.sadb_x_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sadb_x_ipsecrequest*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.sadb_x_policy* %1, %struct.sadb_x_policy** %5, align 8
  %9 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %5, align 8
  %10 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %11, 8
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %5, align 8
  %17 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %16, i64 1
  %18 = bitcast %struct.sadb_x_policy* %17 to i8*
  %19 = bitcast i8* %18 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %19, %struct.sadb_x_ipsecrequest** %8, align 8
  %20 = load %struct.sadb_x_policy*, %struct.sadb_x_policy** %5, align 8
  %21 = getelementptr inbounds %struct.sadb_x_policy, %struct.sadb_x_policy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %72

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %56, %29
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %37 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %42 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %34
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %72

49:                                               ; preds = %40
  %50 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %51 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %52 = call i32 @parse_ipsecrequest(%struct.xfrm_policy* %50, %struct.sadb_x_ipsecrequest* %51)
  store i32 %52, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %72

56:                                               ; preds = %49
  %57 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %58 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %63 = bitcast %struct.sadb_x_ipsecrequest* %62 to i32*
  %64 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %8, align 8
  %65 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = bitcast i32* %68 to i8*
  %70 = bitcast i8* %69 to %struct.sadb_x_ipsecrequest*
  store %struct.sadb_x_ipsecrequest* %70, %struct.sadb_x_ipsecrequest** %8, align 8
  br label %30

71:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %54, %46, %26
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @parse_ipsecrequest(%struct.xfrm_policy*, %struct.sadb_x_ipsecrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
