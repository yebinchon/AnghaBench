; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_armor.c_ceph_armor.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_armor.c_ceph_armor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_armor(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %115, %3
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ult i8* %13, %14
  br i1 %15, label %16, label %116

16:                                               ; preds = %12
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %9, align 1
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = ashr i32 %21, 2
  %23 = trunc i32 %22 to i8
  %24 = call i8* @encode_bits(i8 zeroext %23)
  %25 = ptrtoint i8* %24 to i8
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 %25, i8* %26, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ult i8* %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %16
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %5, align 8
  %34 = load i8, i8* %32, align 1
  store i8 %34, i8* %10, align 1
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 3
  %38 = shl i32 %37, 4
  %39 = load i8, i8* %10, align 1
  %40 = zext i8 %39 to i32
  %41 = ashr i32 %40, 4
  %42 = or i32 %38, %41
  %43 = trunc i32 %42 to i8
  %44 = call i8* @encode_bits(i8 zeroext %43)
  %45 = ptrtoint i8* %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  store i8 %45, i8* %46, align 1
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = icmp ult i8* %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %31
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  %54 = load i8, i8* %52, align 1
  store i8 %54, i8* %11, align 1
  %55 = load i8, i8* %10, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 2
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = ashr i32 %60, 6
  %62 = or i32 %58, %61
  %63 = trunc i32 %62 to i8
  %64 = call i8* @encode_bits(i8 zeroext %63)
  %65 = ptrtoint i8* %64 to i8
  %66 = load i8*, i8** %4, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %4, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 63
  %71 = trunc i32 %70 to i8
  %72 = call i8* @encode_bits(i8 zeroext %71)
  %73 = ptrtoint i8* %72 to i8
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  store i8 %73, i8* %74, align 1
  br label %88

76:                                               ; preds = %31
  %77 = load i8, i8* %10, align 1
  %78 = zext i8 %77 to i32
  %79 = and i32 %78, 15
  %80 = shl i32 %79, 2
  %81 = trunc i32 %80 to i8
  %82 = call i8* @encode_bits(i8 zeroext %81)
  %83 = ptrtoint i8* %82 to i8
  %84 = load i8*, i8** %4, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %4, align 8
  store i8 %83, i8* %84, align 1
  %86 = load i8*, i8** %4, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %4, align 8
  store i8 61, i8* %86, align 1
  br label %88

88:                                               ; preds = %76, %51
  br label %103

89:                                               ; preds = %16
  %90 = load i8, i8* %9, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, 3
  %93 = shl i32 %92, 4
  %94 = trunc i32 %93 to i8
  %95 = call i8* @encode_bits(i8 zeroext %94)
  %96 = ptrtoint i8* %95 to i8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %4, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %4, align 8
  store i8 61, i8* %99, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %4, align 8
  store i8 61, i8* %101, align 1
  br label %103

103:                                              ; preds = %89, %88
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 4
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 %108, 64
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  store i32 0, i32* %8, align 4
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  store i8 10, i8* %111, align 1
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %103
  br label %12

116:                                              ; preds = %12
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i8* @encode_bits(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
