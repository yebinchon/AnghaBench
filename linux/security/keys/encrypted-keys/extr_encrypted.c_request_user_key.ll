; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_request_user_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c_request_user_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32 }
%struct.user_key_payload = type { i64, i32* }

@key_type_user = common dso_local global i32 0, align 4
@EKEYREVOKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.key* (i8*, i32**, i64*)* @request_user_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.key* @request_user_key(i8* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.user_key_payload*, align 8
  %8 = alloca %struct.key*, align 8
  store i8* %0, i8** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.key* @request_key(i32* @key_type_user, i8* %9, i32* null)
  store %struct.key* %10, %struct.key** %8, align 8
  %11 = load %struct.key*, %struct.key** %8, align 8
  %12 = call i64 @IS_ERR(%struct.key* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %41

15:                                               ; preds = %3
  %16 = load %struct.key*, %struct.key** %8, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 0
  %18 = call i32 @down_read(i32* %17)
  %19 = load %struct.key*, %struct.key** %8, align 8
  %20 = call %struct.user_key_payload* @user_key_payload_locked(%struct.key* %19)
  store %struct.user_key_payload* %20, %struct.user_key_payload** %7, align 8
  %21 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %22 = icmp ne %struct.user_key_payload* %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %15
  %24 = load %struct.key*, %struct.key** %8, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 0
  %26 = call i32 @up_read(i32* %25)
  %27 = load %struct.key*, %struct.key** %8, align 8
  %28 = call i32 @key_put(%struct.key* %27)
  %29 = load i32, i32* @EKEYREVOKED, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.key* @ERR_PTR(i32 %30)
  store %struct.key* %31, %struct.key** %8, align 8
  br label %41

32:                                               ; preds = %15
  %33 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %34 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32**, i32*** %5, align 8
  store i32* %35, i32** %36, align 8
  %37 = load %struct.user_key_payload*, %struct.user_key_payload** %7, align 8
  %38 = getelementptr inbounds %struct.user_key_payload, %struct.user_key_payload* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %6, align 8
  store i64 %39, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %23, %14
  %42 = load %struct.key*, %struct.key** %8, align 8
  ret %struct.key* %42
}

declare dso_local %struct.key* @request_key(i32*, i8*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.user_key_payload* @user_key_payload_locked(%struct.key*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local %struct.key* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
