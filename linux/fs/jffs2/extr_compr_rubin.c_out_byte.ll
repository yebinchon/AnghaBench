; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_out_byte.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_out_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rubin_state = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rubin_state*, i8)* @out_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @out_byte(%struct.rubin_state* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rubin_state*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rubin_state, align 8
  store %struct.rubin_state* %0, %struct.rubin_state** %4, align 8
  store i8 %1, i8* %5, align 1
  %9 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %10 = bitcast %struct.rubin_state* %8 to i8*
  %11 = bitcast %struct.rubin_state* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  %16 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %17 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %18 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %21 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %19, %26
  %28 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %29 = getelementptr inbounds %struct.rubin_state, %struct.rubin_state* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 1
  %38 = trunc i32 %37 to i8
  %39 = call i32 @encode(%struct.rubin_state* %16, i64 %27, i64 %34, i8 zeroext %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %15
  %43 = load %struct.rubin_state*, %struct.rubin_state** %4, align 8
  %44 = bitcast %struct.rubin_state* %43 to i8*
  %45 = bitcast %struct.rubin_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 %45, i64 16, i1 false)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %15
  %48 = load i8, i8* %5, align 1
  %49 = zext i8 %48 to i32
  %50 = ashr i32 %49, 1
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %5, align 1
  br label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %12

55:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %42
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @encode(%struct.rubin_state*, i64, i64, i8 zeroext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
