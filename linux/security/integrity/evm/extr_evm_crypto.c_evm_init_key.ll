; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_init_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_evm_init_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.encrypted_key_payload** }
%struct.encrypted_key_payload = type { i32, i32 }

@key_type_encrypted = common dso_local global i32 0, align 4
@EVMKEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_init_key() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.encrypted_key_payload*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @EVMKEY, align 4
  %6 = call %struct.key* @request_key(i32* @key_type_encrypted, i32 %5, i32* null)
  store %struct.key* %6, %struct.key** %2, align 8
  %7 = load %struct.key*, %struct.key** %2, align 8
  %8 = call i64 @IS_ERR(%struct.key* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %43

13:                                               ; preds = %0
  %14 = load %struct.key*, %struct.key** %2, align 8
  %15 = getelementptr inbounds %struct.key, %struct.key* %14, i32 0, i32 0
  %16 = call i32 @down_read(i32* %15)
  %17 = load %struct.key*, %struct.key** %2, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.encrypted_key_payload**, %struct.encrypted_key_payload*** %19, align 8
  %21 = getelementptr inbounds %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %20, i64 0
  %22 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %21, align 8
  store %struct.encrypted_key_payload* %22, %struct.encrypted_key_payload** %3, align 8
  %23 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %24 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %27 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @evm_set_key(i32 %25, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %31 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %3, align 8
  %34 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memset(i32 %32, i32 0, i32 %35)
  %37 = load %struct.key*, %struct.key** %2, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 0
  %39 = call i32 @up_read(i32* %38)
  %40 = load %struct.key*, %struct.key** %2, align 8
  %41 = call i32 @key_put(%struct.key* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %13, %10
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local %struct.key* @request_key(i32*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @evm_set_key(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
