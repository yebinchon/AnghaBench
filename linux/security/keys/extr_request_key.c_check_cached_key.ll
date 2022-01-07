; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_check_cached_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key.c_check_cached_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.key* }
%struct.key = type { i32 }
%struct.keyring_search_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.key.0*, %struct.TYPE_3__*)* }
%struct.key.0 = type opaque

@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (%struct.keyring_search_context*)* @check_cached_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @check_cached_key(%struct.keyring_search_context* %0) #0 {
  %2 = alloca %struct.keyring_search_context*, align 8
  store %struct.keyring_search_context* %0, %struct.keyring_search_context** %2, align 8
  ret %struct.key* null
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
