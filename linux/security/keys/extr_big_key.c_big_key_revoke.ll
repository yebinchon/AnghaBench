; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_revoke.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_revoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }
%struct.path = type { i32 }

@big_key_path = common dso_local global i64 0, align 8
@big_key_len = common dso_local global i64 0, align 8
@BIG_KEY_FILE_THRESHOLD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @big_key_revoke(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.path*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %4 = load %struct.key*, %struct.key** %2, align 8
  %5 = getelementptr inbounds %struct.key, %struct.key* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* @big_key_path, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  %10 = bitcast i64* %9 to %struct.path*
  store %struct.path* %10, %struct.path** %3, align 8
  %11 = load %struct.key*, %struct.key** %2, align 8
  %12 = call i32 @key_payload_reserve(%struct.key* %11, i32 0)
  %13 = load %struct.key*, %struct.key** %2, align 8
  %14 = call i64 @key_is_positive(%struct.key* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = load %struct.key*, %struct.key** %2, align 8
  %18 = getelementptr inbounds %struct.key, %struct.key* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @big_key_len, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BIG_KEY_FILE_THRESHOLD, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.path*, %struct.path** %3, align 8
  %28 = call i32 @vfs_truncate(%struct.path* %27, i32 0)
  br label %29

29:                                               ; preds = %26, %16, %1
  ret void
}

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local i64 @key_is_positive(%struct.key*) #1

declare dso_local i32 @vfs_truncate(%struct.path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
