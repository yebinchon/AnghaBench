; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_user_state_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_user.c_xfrm_user_state_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_usersa_id = type { i32, i32, i32, i32 }
%struct.nlattr = type { i32 }
%struct.xfrm_mark = type { i32 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@XFRMA_SRCADDR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_state* (%struct.net*, %struct.xfrm_usersa_id*, %struct.nlattr**, i32*)* @xfrm_user_state_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_state* @xfrm_user_state_lookup(%struct.net* %0, %struct.xfrm_usersa_id* %1, %struct.nlattr** %2, i32* %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.xfrm_usersa_id*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.xfrm_state*, align 8
  %10 = alloca %struct.xfrm_mark, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.xfrm_usersa_id* %1, %struct.xfrm_usersa_id** %6, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %9, align 8
  %14 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %15 = call i32 @xfrm_mark_get(%struct.nlattr** %14, %struct.xfrm_mark* %10)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %17 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %20 = call i64 @xfrm_id_proto_match(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load i32, i32* @ESRCH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %28 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %27, i32 0, i32 2
  %29 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %30 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %33 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %36 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.xfrm_state* @xfrm_state_lookup(%struct.net* %25, i32 %26, i32* %28, i32 %31, i32 %34, i32 %37)
  store %struct.xfrm_state* %38, %struct.xfrm_state** %9, align 8
  br label %63

39:                                               ; preds = %4
  store i32* null, i32** %13, align 8
  %40 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %41 = load i32, i32* @XFRMA_SRCADDR, align 4
  %42 = call i32 @verify_one_addr(%struct.nlattr** %40, i32 %41, i32** %13)
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %64

48:                                               ; preds = %39
  %49 = load i32, i32* @ESRCH, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  %51 = load %struct.net*, %struct.net** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %54 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %53, i32 0, i32 2
  %55 = load i32*, i32** %13, align 8
  %56 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %57 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xfrm_usersa_id*, %struct.xfrm_usersa_id** %6, align 8
  %60 = getelementptr inbounds %struct.xfrm_usersa_id, %struct.xfrm_usersa_id* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net* %51, i32 %52, i32* %54, i32* %55, i32 %58, i32 %61)
  store %struct.xfrm_state* %62, %struct.xfrm_state** %9, align 8
  br label %63

63:                                               ; preds = %48, %22
  br label %64

64:                                               ; preds = %63, %45
  %65 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  %66 = icmp ne %struct.xfrm_state* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %8, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %67, %64
  %74 = load %struct.xfrm_state*, %struct.xfrm_state** %9, align 8
  ret %struct.xfrm_state* %74
}

declare dso_local i32 @xfrm_mark_get(%struct.nlattr**, %struct.xfrm_mark*) #1

declare dso_local i64 @xfrm_id_proto_match(i32, i32) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup(%struct.net*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @verify_one_addr(%struct.nlattr**, i32, i32**) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net*, i32, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
