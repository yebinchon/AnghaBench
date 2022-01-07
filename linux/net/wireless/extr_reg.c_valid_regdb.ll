; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_valid_regdb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_valid_regdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdb_header = type { i64, i64, %struct.fwdb_country* }
%struct.fwdb_country = type { i32 }

@FWDB_MAGIC = common dso_local global i32 0, align 4
@FWDB_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @valid_regdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_regdb(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fwdb_header*, align 8
  %7 = alloca %struct.fwdb_country*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.fwdb_header*
  store %struct.fwdb_header* %10, %struct.fwdb_header** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, 24
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load %struct.fwdb_header*, %struct.fwdb_header** %6, align 8
  %17 = getelementptr inbounds %struct.fwdb_header, %struct.fwdb_header* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @FWDB_MAGIC, align 4
  %20 = call i64 @cpu_to_be32(i32 %19)
  %21 = icmp ne i64 %18, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %68

23:                                               ; preds = %15
  %24 = load %struct.fwdb_header*, %struct.fwdb_header** %6, align 8
  %25 = getelementptr inbounds %struct.fwdb_header, %struct.fwdb_header* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @FWDB_VERSION, align 4
  %28 = call i64 @cpu_to_be32(i32 %27)
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %68

31:                                               ; preds = %23
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @regdb_has_valid_signature(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %68

37:                                               ; preds = %31
  %38 = load %struct.fwdb_header*, %struct.fwdb_header** %6, align 8
  %39 = getelementptr inbounds %struct.fwdb_header, %struct.fwdb_header* %38, i32 0, i32 2
  %40 = load %struct.fwdb_country*, %struct.fwdb_country** %39, align 8
  %41 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %40, i64 0
  store %struct.fwdb_country* %41, %struct.fwdb_country** %7, align 8
  br label %42

42:                                               ; preds = %64, %37
  %43 = load %struct.fwdb_country*, %struct.fwdb_country** %7, align 8
  %44 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %43, i64 1
  %45 = bitcast %struct.fwdb_country* %44 to i32*
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = icmp ule i32* %45, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %42
  %52 = load %struct.fwdb_country*, %struct.fwdb_country** %7, align 8
  %53 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %67

57:                                               ; preds = %51
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.fwdb_country*, %struct.fwdb_country** %7, align 8
  %61 = call i32 @valid_country(i32* %58, i32 %59, %struct.fwdb_country* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %68

64:                                               ; preds = %57
  %65 = load %struct.fwdb_country*, %struct.fwdb_country** %7, align 8
  %66 = getelementptr inbounds %struct.fwdb_country, %struct.fwdb_country* %65, i32 1
  store %struct.fwdb_country* %66, %struct.fwdb_country** %7, align 8
  br label %42

67:                                               ; preds = %56, %42
  store i32 1, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %63, %36, %30, %22, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @regdb_has_valid_signature(i32*, i32) #1

declare dso_local i32 @valid_country(i32*, i32, %struct.fwdb_country*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
