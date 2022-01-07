; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_create_secret.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_auth.c_sctp_auth_asoc_create_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i32 }
%struct.sctp_association = type { i32 }
%struct.sctp_shared_key = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (%struct.sctp_association*, %struct.sctp_shared_key*, i32)* @sctp_auth_asoc_create_secret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association* %0, %struct.sctp_shared_key* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_shared_key*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_auth_bytes*, align 8
  %8 = alloca %struct.sctp_auth_bytes*, align 8
  %9 = alloca %struct.sctp_auth_bytes*, align 8
  %10 = alloca %struct.sctp_auth_bytes*, align 8
  %11 = alloca %struct.sctp_auth_bytes*, align 8
  %12 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_shared_key* %1, %struct.sctp_shared_key** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %11, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.sctp_auth_bytes* @sctp_auth_make_local_vector(%struct.sctp_association* %13, i32 %14)
  store %struct.sctp_auth_bytes* %15, %struct.sctp_auth_bytes** %7, align 8
  %16 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.sctp_auth_bytes* @sctp_auth_make_peer_vector(%struct.sctp_association* %16, i32 %17)
  store %struct.sctp_auth_bytes* %18, %struct.sctp_auth_bytes** %8, align 8
  %19 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %20 = icmp ne %struct.sctp_auth_bytes* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %23 = icmp ne %struct.sctp_auth_bytes* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %3
  br label %43

25:                                               ; preds = %21
  %26 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %27 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %28 = call i32 @sctp_auth_compare_vectors(%struct.sctp_auth_bytes* %26, %struct.sctp_auth_bytes* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  store %struct.sctp_auth_bytes* %32, %struct.sctp_auth_bytes** %9, align 8
  %33 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  store %struct.sctp_auth_bytes* %33, %struct.sctp_auth_bytes** %10, align 8
  br label %37

34:                                               ; preds = %25
  %35 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  store %struct.sctp_auth_bytes* %35, %struct.sctp_auth_bytes** %9, align 8
  %36 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  store %struct.sctp_auth_bytes* %36, %struct.sctp_auth_bytes** %10, align 8
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %5, align 8
  %39 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %9, align 8
  %40 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %10, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.sctp_auth_bytes* @sctp_auth_asoc_set_secret(%struct.sctp_shared_key* %38, %struct.sctp_auth_bytes* %39, %struct.sctp_auth_bytes* %40, i32 %41)
  store %struct.sctp_auth_bytes* %42, %struct.sctp_auth_bytes** %11, align 8
  br label %43

43:                                               ; preds = %37, %24
  %44 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %7, align 8
  %45 = call i32 @sctp_auth_key_put(%struct.sctp_auth_bytes* %44)
  %46 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %8, align 8
  %47 = call i32 @sctp_auth_key_put(%struct.sctp_auth_bytes* %46)
  %48 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %11, align 8
  ret %struct.sctp_auth_bytes* %48
}

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_make_local_vector(%struct.sctp_association*, i32) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_make_peer_vector(%struct.sctp_association*, i32) #1

declare dso_local i32 @sctp_auth_compare_vectors(%struct.sctp_auth_bytes*, %struct.sctp_auth_bytes*) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_asoc_set_secret(%struct.sctp_shared_key*, %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes*, i32) #1

declare dso_local i32 @sctp_auth_key_put(%struct.sctp_auth_bytes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
