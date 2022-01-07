; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_find_key_to_update.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_find_key_to_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_index_key = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.key = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"{%d},{%s,%s}\00", align 1
@keyring_assoc_array_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" = NULL\00", align 1
@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c" = NULL [x]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" = {%d}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_key_to_update(i32* %0, %struct.keyring_index_key* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.keyring_index_key*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca %struct.key*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.keyring_index_key* %1, %struct.keyring_index_key** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call %struct.key* @key_ref_to_ptr(i32* %9)
  store %struct.key* %10, %struct.key** %6, align 8
  %11 = load %struct.key*, %struct.key** %6, align 8
  %12 = getelementptr inbounds %struct.key, %struct.key* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %15 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %20 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kenter(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18, i32 %21)
  %23 = load %struct.key*, %struct.key** %6, align 8
  %24 = getelementptr inbounds %struct.key, %struct.key* %23, i32 0, i32 2
  %25 = load %struct.keyring_index_key*, %struct.keyring_index_key** %5, align 8
  %26 = call i8* @assoc_array_find(i32* %24, i32* @keyring_assoc_array_ops, %struct.keyring_index_key* %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %32

30:                                               ; preds = %2
  %31 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %58

32:                                               ; preds = %29
  %33 = load i8*, i8** %8, align 8
  %34 = call %struct.key* @keyring_ptr_to_key(i8* %33)
  store %struct.key* %34, %struct.key** %7, align 8
  %35 = load %struct.key*, %struct.key** %7, align 8
  %36 = getelementptr inbounds %struct.key, %struct.key* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %39 = shl i32 1, %38
  %40 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %41 = shl i32 1, %40
  %42 = or i32 %39, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %58

47:                                               ; preds = %32
  %48 = load %struct.key*, %struct.key** %7, align 8
  %49 = call i32 @__key_get(%struct.key* %48)
  %50 = load %struct.key*, %struct.key** %7, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @kleave(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load %struct.key*, %struct.key** %7, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @is_key_possessed(i32* %55)
  %57 = call i32* @make_key_ref(%struct.key* %54, i32 %56)
  store i32* %57, i32** %3, align 8
  br label %58

58:                                               ; preds = %47, %45, %30
  %59 = load i32*, i32** %3, align 8
  ret i32* %59
}

declare dso_local %struct.key* @key_ref_to_ptr(i32*) #1

declare dso_local i32 @kenter(i8*, i32, i32, i32) #1

declare dso_local i8* @assoc_array_find(i32*, i32*, %struct.keyring_index_key*) #1

declare dso_local i32 @kleave(i8*, ...) #1

declare dso_local %struct.key* @keyring_ptr_to_key(i8*) #1

declare dso_local i32 @__key_get(%struct.key*) #1

declare dso_local i32* @make_key_ref(%struct.key*, i32) #1

declare dso_local i32 @is_key_possessed(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
