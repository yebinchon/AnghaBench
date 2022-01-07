; ModuleID = '/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_username2sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/net/decnet/extr_af_decnet.c_dn_username2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_dn = type { i8, i8*, i32 }

@DN_MAXOBJL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_username2sockaddr(i8* %0, i32 %1, %struct.sockaddr_dn* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_dn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr_dn* %2, %struct.sockaddr_dn** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %11, align 4
  store i32 12, i32* %12, align 4
  %14 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %15 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %14, i32 0, i32 0
  store i8 0, i8* %15, align 8
  %16 = call i8* @cpu_to_le16(i32 0)
  %17 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %20 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DN_MAXOBJL, align 4
  %23 = call i32 @memset(i32 %21, i32 0, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %99

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  %32 = load i8, i8* %30, align 1
  %33 = load i8*, i8** %9, align 8
  store i8 %32, i8* %33, align 1
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %34, align 1
  store i8 %36, i8* %10, align 1
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  switch i32 %39, label %55 [
    i32 0, label %40
    i32 1, label %44
    i32 2, label %45
    i32 4, label %50
  ]

40:                                               ; preds = %27
  %41 = load i8, i8* %10, align 1
  %42 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %43 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %42, i32 0, i32 0
  store i8 %41, i8* %43, align 8
  store i32 2, i32* %5, align 4
  br label %99

44:                                               ; preds = %27
  store i32 16, i32* %12, align 4
  br label %56

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 4
  store i32 %47, i32* %7, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 4
  store i8* %49, i8** %6, align 8
  br label %56

50:                                               ; preds = %27
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, 8
  store i32 %52, i32* %7, align 4
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8* %54, i8** %6, align 8
  br label %56

55:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %99

56:                                               ; preds = %50, %45, %44
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 -1, i32* %5, align 4
  br label %99

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = call i8* @cpu_to_le16(i32 %66)
  %68 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %71 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @le16_to_cpu(i8* %72)
  %74 = load i32, i32* %7, align 4
  %75 = sub nsw i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %62
  %79 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %80 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @le16_to_cpu(i8* %81)
  %83 = load i32, i32* %12, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78, %62
  store i32 -1, i32* %5, align 4
  br label %99

86:                                               ; preds = %78
  %87 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %88 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load %struct.sockaddr_dn*, %struct.sockaddr_dn** %8, align 8
  %92 = getelementptr inbounds %struct.sockaddr_dn, %struct.sockaddr_dn* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @le16_to_cpu(i8* %93)
  %95 = call i32 @memcpy(i32 %89, i8* %90, i32 %94)
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %86, %85, %61, %55, %40, %26
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
