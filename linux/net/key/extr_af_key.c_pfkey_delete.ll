; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_delete.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32 }
%struct.km_event = type { i32, i32, i32 }

@SADB_EXT_SA = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_SRC = common dso_local global i32 0, align 4
@SADB_EXT_ADDRESS_DST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@XFRM_MSG_DELSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_delete(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca %struct.km_event, align 4
  %13 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.net* @sock_net(%struct.sock* %14)
  store %struct.net* %15, %struct.net** %10, align 8
  %16 = load i8**, i8*** %9, align 8
  %17 = load i32, i32* @SADB_EXT_SA, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %16, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %4
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* @SADB_EXT_ADDRESS_SRC, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %24, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load i8**, i8*** %9, align 8
  %31 = load i32, i32* @SADB_EXT_ADDRESS_DST, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %30, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @present_and_same_family(i8* %29, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %23, %4
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %92

41:                                               ; preds = %23
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %44 = load i8**, i8*** %9, align 8
  %45 = call %struct.xfrm_state* @pfkey_xfrm_state_lookup(%struct.net* %42, %struct.sadb_msg* %43, i8** %44)
  store %struct.xfrm_state* %45, %struct.xfrm_state** %11, align 8
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %47 = icmp eq %struct.xfrm_state* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32, i32* @ESRCH, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %92

51:                                               ; preds = %41
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %53 = call i32 @security_xfrm_state_delete(%struct.xfrm_state* %52)
  store i32 %53, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %82

56:                                               ; preds = %51
  %57 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %58 = call i64 @xfrm_state_kern(%struct.xfrm_state* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @EPERM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %13, align 4
  br label %82

63:                                               ; preds = %56
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %65 = call i32 @xfrm_state_delete(%struct.xfrm_state* %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %82

69:                                               ; preds = %63
  %70 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %71 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 2
  store i32 %72, i32* %73, align 4
  %74 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %75 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 1
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @XFRM_MSG_DELSA, align 4
  %79 = getelementptr inbounds %struct.km_event, %struct.km_event* %12, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %81 = call i32 @km_state_notify(%struct.xfrm_state* %80, %struct.km_event* %12)
  br label %82

82:                                               ; preds = %69, %68, %60, %55
  %83 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 0, i32 1
  %88 = call i32 @xfrm_audit_state_delete(%struct.xfrm_state* %83, i32 %87, i32 1)
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %90 = call i32 @xfrm_state_put(%struct.xfrm_state* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %82, %48, %38
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local i32 @present_and_same_family(i8*, i8*) #1

declare dso_local %struct.xfrm_state* @pfkey_xfrm_state_lookup(%struct.net*, %struct.sadb_msg*, i8**) #1

declare dso_local i32 @security_xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @km_state_notify(%struct.xfrm_state*, %struct.km_event*) #1

declare dso_local i32 @xfrm_audit_state_delete(%struct.xfrm_state*, i32, i32) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
