; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_create_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (i32, i32)* @sctp_auth_create_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_create_key(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_auth_bytes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_auth_bytes*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = load i32, i32* @INT_MAX, align 4
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, 8
  %12 = icmp ugt i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add i64 8, %16
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.sctp_auth_bytes* @kmalloc(i32 %18, i32 %19)
  store %struct.sctp_auth_bytes* %20, %struct.sctp_auth_bytes** %6, align 8
  %21 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %22 = icmp ne %struct.sctp_auth_bytes* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %3, align 8
  br label %34

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %27 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %29 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %28, i32 0, i32 1
  %30 = call i32 @refcount_set(i32* %29, i32 1)
  %31 = load i32, i32* @keys, align 4
  %32 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %31)
  %33 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  store %struct.sctp_auth_bytes* %33, %struct.sctp_auth_bytes** %3, align 8
  br label %34

34:                                               ; preds = %24, %23, %13
  %35 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %3, align 8
  ret %struct.sctp_auth_bytes* %35
}

declare dso_local %struct.sctp_auth_bytes* @kmalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
