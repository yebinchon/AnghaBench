; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_restriction_gc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_keyring_restriction_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.key_restriction*, i64, i32 }
%struct.key_restriction = type { %struct.key_type*, i32*, i32 }
%struct.key_type = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%x{%s}\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" [no restriction gc]\00", align 1
@restrict_link_reject = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c" [restriction gc]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @keyring_restriction_gc(%struct.key* %0, %struct.key_type* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.key_type*, align 8
  %5 = alloca %struct.key_restriction*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.key_type* %1, %struct.key_type** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.key*, %struct.key** %3, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 2
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
  %19 = load %struct.key_type*, %struct.key_type** %4, align 8
  %20 = icmp ne %struct.key_type* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.key*, %struct.key** %3, align 8
  %23 = getelementptr inbounds %struct.key, %struct.key* %22, i32 0, i32 1
  %24 = load %struct.key_restriction*, %struct.key_restriction** %23, align 8
  %25 = icmp ne %struct.key_restriction* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.key*, %struct.key** %3, align 8
  %28 = getelementptr inbounds %struct.key, %struct.key* %27, i32 0, i32 1
  %29 = load %struct.key_restriction*, %struct.key_restriction** %28, align 8
  %30 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %29, i32 0, i32 0
  %31 = load %struct.key_type*, %struct.key_type** %30, align 8
  %32 = load %struct.key_type*, %struct.key_type** %4, align 8
  %33 = icmp ne %struct.key_type* %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26, %21, %16
  %35 = call i32 @kleave(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %58

36:                                               ; preds = %26
  %37 = load %struct.key*, %struct.key** %3, align 8
  %38 = getelementptr inbounds %struct.key, %struct.key* %37, i32 0, i32 0
  %39 = call i32 @down_write(i32* %38)
  %40 = load %struct.key*, %struct.key** %3, align 8
  %41 = getelementptr inbounds %struct.key, %struct.key* %40, i32 0, i32 1
  %42 = load %struct.key_restriction*, %struct.key_restriction** %41, align 8
  store %struct.key_restriction* %42, %struct.key_restriction** %5, align 8
  %43 = load i32, i32* @restrict_link_reject, align 4
  %44 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %45 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %47 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @key_put(i32* %48)
  %50 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %51 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = load %struct.key_restriction*, %struct.key_restriction** %5, align 8
  %53 = getelementptr inbounds %struct.key_restriction, %struct.key_restriction* %52, i32 0, i32 0
  store %struct.key_type* null, %struct.key_type** %53, align 8
  %54 = load %struct.key*, %struct.key** %3, align 8
  %55 = getelementptr inbounds %struct.key, %struct.key* %54, i32 0, i32 0
  %56 = call i32 @up_write(i32* %55)
  %57 = call i32 @kleave(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @kenter(i8*, i32, i8*) #1

declare dso_local i32 @kleave(i8*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @key_put(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
