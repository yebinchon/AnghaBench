; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_revoke.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.request_key_auth = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"{%d}\00", align 1
@request_key_auth_rcu_disposal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @request_key_auth_revoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_key_auth_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.request_key_auth*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = call %struct.request_key_auth* @dereference_key_locked(%struct.key* %4)
  store %struct.request_key_auth* %5, %struct.request_key_auth** %3, align 8
  %6 = load %struct.key*, %struct.key** %2, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @kenter(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.key*, %struct.key** %2, align 8
  %11 = call i32 @rcu_assign_keypointer(%struct.key* %10, i32* null)
  %12 = load %struct.request_key_auth*, %struct.request_key_auth** %3, align 8
  %13 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %12, i32 0, i32 0
  %14 = load i32, i32* @request_key_auth_rcu_disposal, align 4
  %15 = call i32 @call_rcu(i32* %13, i32 %14)
  ret void
}

declare dso_local %struct.request_key_auth* @dereference_key_locked(%struct.key*) #1

declare dso_local i32 @kenter(i8*, i32) #1

declare dso_local i32 @rcu_assign_keypointer(%struct.key*, i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
