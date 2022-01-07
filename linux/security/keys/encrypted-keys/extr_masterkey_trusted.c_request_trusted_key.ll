; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_masterkey_trusted.c_request_trusted_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_masterkey_trusted.c_request_trusted_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.trusted_key_payload** }
%struct.trusted_key_payload = type { i64, i32* }

@key_type_trusted = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.key* @request_trusted_key(i8* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.trusted_key_payload*, align 8
  %8 = alloca %struct.key*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.key* @request_key(i32* @key_type_trusted, i8* %9, i32* null)
  store %struct.key* %10, %struct.key** %8, align 8
  %11 = load %struct.key*, %struct.key** %8, align 8
  %12 = call i64 @IS_ERR(%struct.key* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %33

15:                                               ; preds = %3
  %16 = load %struct.key*, %struct.key** %8, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 1
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.key*, %struct.key** %8, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.trusted_key_payload**, %struct.trusted_key_payload*** %21, align 8
  %23 = getelementptr inbounds %struct.trusted_key_payload*, %struct.trusted_key_payload** %22, i64 0
  %24 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %23, align 8
  store %struct.trusted_key_payload* %24, %struct.trusted_key_payload** %7, align 8
  %25 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %26 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32**, i32*** %5, align 8
  store i32* %27, i32** %28, align 8
  %29 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %7, align 8
  %30 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %15, %14
  %34 = load %struct.key*, %struct.key** %8, align 8
  ret %struct.key* %34
}

declare dso_local %struct.key* @request_key(i32*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
