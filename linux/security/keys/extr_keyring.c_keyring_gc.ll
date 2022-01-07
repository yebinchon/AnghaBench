; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_gc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%x{%s}\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KEY_FLAG_INVALIDATED = common dso_local global i32 0, align 4
@KEY_FLAG_REVOKED = common dso_local global i32 0, align 4
@keyring_gc_check_iterator = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" [no gc]\00", align 1
@keyring_assoc_array_ops = common dso_local global i32 0, align 4
@keyring_gc_select_iterator = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" [gc]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyring_gc(%struct.key* %0, i32 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.key*, %struct.key** %3, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = inttoptr i64 %11 to i8*
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i8* [ %14, %13 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %15 ]
  %18 = call i32 @kenter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %17)
  %19 = load %struct.key*, %struct.key** %3, align 8
  %20 = getelementptr inbounds %struct.key, %struct.key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @KEY_FLAG_INVALIDATED, align 4
  %23 = shl i32 1, %22
  %24 = load i32, i32* @KEY_FLAG_REVOKED, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = and i32 %21, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %41

30:                                               ; preds = %16
  %31 = call i32 (...) @rcu_read_lock()
  %32 = load %struct.key*, %struct.key** %3, align 8
  %33 = getelementptr inbounds %struct.key, %struct.key* %32, i32 0, i32 2
  %34 = load i32, i32* @keyring_gc_check_iterator, align 4
  %35 = call i32 @assoc_array_iterate(i32* %33, i32 %34, i32* %4)
  store i32 %35, i32* %5, align 4
  %36 = call i32 (...) @rcu_read_unlock()
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %43

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = call i32 @kleave(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %55

43:                                               ; preds = %39
  %44 = load %struct.key*, %struct.key** %3, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 1
  %46 = call i32 @down_write(i32* %45)
  %47 = load %struct.key*, %struct.key** %3, align 8
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 2
  %49 = load i32, i32* @keyring_gc_select_iterator, align 4
  %50 = call i32 @assoc_array_gc(i32* %48, i32* @keyring_assoc_array_ops, i32 %49, i32* %4)
  %51 = load %struct.key*, %struct.key** %3, align 8
  %52 = getelementptr inbounds %struct.key, %struct.key* %51, i32 0, i32 1
  %53 = call i32 @up_write(i32* %52)
  %54 = call i32 @kleave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %43, %41
  ret void
}

declare dso_local i32 @kenter(i8*, i32, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @assoc_array_iterate(i32*, i32, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kleave(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @assoc_array_gc(i32*, i32*, i32, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
