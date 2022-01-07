; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ids.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_check_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idpair = type { i64, i64 }

@ID_MAP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.idpair*)* @check_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ids(i64 %0, i64 %1, %struct.idpair* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.idpair*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.idpair* %2, %struct.idpair** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %54, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @ID_MAP_SIZE, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load %struct.idpair*, %struct.idpair** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.idpair, %struct.idpair* %14, i64 %16
  %18 = getelementptr inbounds %struct.idpair, %struct.idpair* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %13
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.idpair*, %struct.idpair** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.idpair, %struct.idpair* %23, i64 %25
  %27 = getelementptr inbounds %struct.idpair, %struct.idpair* %26, i32 0, i32 0
  store i64 %22, i64* %27, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.idpair*, %struct.idpair** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.idpair, %struct.idpair* %29, i64 %31
  %33 = getelementptr inbounds %struct.idpair, %struct.idpair* %32, i32 0, i32 1
  store i64 %28, i64* %33, align 8
  store i32 1, i32* %4, align 4
  br label %59

34:                                               ; preds = %13
  %35 = load %struct.idpair*, %struct.idpair** %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.idpair, %struct.idpair* %35, i64 %37
  %39 = getelementptr inbounds %struct.idpair, %struct.idpair* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.idpair*, %struct.idpair** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.idpair, %struct.idpair* %44, i64 %46
  %48 = getelementptr inbounds %struct.idpair, %struct.idpair* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %9
  %58 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %43, %21
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
