; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_payload_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_key.c_key_payload_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@KEY_FLAG_IN_QUOTA = common dso_local global i32 0, align 4
@GLOBAL_ROOT_UID = common dso_local global i32 0, align 4
@key_quota_root_maxbytes = common dso_local global i32 0, align 4
@key_quota_maxbytes = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @key_payload_reserve(%struct.key* %0, i64 %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.key*, %struct.key** %3, align 8
  %11 = getelementptr inbounds %struct.key, %struct.key* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.key*, %struct.key** %3, align 8
  %15 = call i32 @key_check(%struct.key* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %2
  %19 = load i32, i32* @KEY_FLAG_IN_QUOTA, align 4
  %20 = load %struct.key*, %struct.key** %3, align 8
  %21 = getelementptr inbounds %struct.key, %struct.key* %20, i32 0, i32 3
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %18
  %25 = load %struct.key*, %struct.key** %3, align 8
  %26 = getelementptr inbounds %struct.key, %struct.key* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GLOBAL_ROOT_UID, align 4
  %31 = call i64 @uid_eq(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @key_quota_root_maxbytes, align 4
  br label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @key_quota_maxbytes, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %7, align 4
  %39 = load %struct.key*, %struct.key** %3, align 8
  %40 = getelementptr inbounds %struct.key, %struct.key* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %37
  %47 = load %struct.key*, %struct.key** %3, align 8
  %48 = getelementptr inbounds %struct.key, %struct.key* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %70, label %56

56:                                               ; preds = %46
  %57 = load %struct.key*, %struct.key** %3, align 8
  %58 = getelementptr inbounds %struct.key, %struct.key* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %61, %62
  %64 = load %struct.key*, %struct.key** %3, align 8
  %65 = getelementptr inbounds %struct.key, %struct.key* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56, %46
  %71 = load i32, i32* @EDQUOT, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %86

73:                                               ; preds = %56, %37
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.key*, %struct.key** %3, align 8
  %76 = getelementptr inbounds %struct.key, %struct.key* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %74
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.key*, %struct.key** %3, align 8
  %83 = getelementptr inbounds %struct.key, %struct.key* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %73, %70
  %87 = load %struct.key*, %struct.key** %3, align 8
  %88 = getelementptr inbounds %struct.key, %struct.key* %87, i32 0, i32 2
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = call i32 @spin_unlock(i32* %90)
  br label %92

92:                                               ; preds = %86, %18, %2
  %93 = load i32, i32* %6, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i64, i64* %4, align 8
  %97 = trunc i64 %96 to i32
  %98 = load %struct.key*, %struct.key** %3, align 8
  %99 = getelementptr inbounds %struct.key, %struct.key* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @key_check(%struct.key*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
