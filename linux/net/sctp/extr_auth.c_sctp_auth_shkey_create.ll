; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_shkey_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_shkey_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_shared_key = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_shared_key* @sctp_auth_shkey_create(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_shared_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_shared_key*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.sctp_shared_key* @kzalloc(i32 12, i32 %7)
  store %struct.sctp_shared_key* %8, %struct.sctp_shared_key** %6, align 8
  %9 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %10 = icmp ne %struct.sctp_shared_key* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.sctp_shared_key* null, %struct.sctp_shared_key** %3, align 8
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %14 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %13, i32 0, i32 2
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %17 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %16, i32 0, i32 1
  %18 = call i32 @refcount_set(i32* %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  %21 = getelementptr inbounds %struct.sctp_shared_key, %struct.sctp_shared_key* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %6, align 8
  store %struct.sctp_shared_key* %22, %struct.sctp_shared_key** %3, align 8
  br label %23

23:                                               ; preds = %12, %11
  %24 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %3, align 8
  ret %struct.sctp_shared_key* %24
}

declare dso_local %struct.sctp_shared_key* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
