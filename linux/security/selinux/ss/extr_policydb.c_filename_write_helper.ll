; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_filename_write_helper.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_policydb.c_filename_write_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename_trans = type { i32, i32, i32, i32* }
%struct.filename_trans_datum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @filename_write_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filename_write_helper(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [4 x i32], align 16
  %9 = alloca %struct.filename_trans*, align 8
  %10 = alloca %struct.filename_trans_datum*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.filename_trans*
  store %struct.filename_trans* %15, %struct.filename_trans** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.filename_trans_datum*
  store %struct.filename_trans_datum* %17, %struct.filename_trans_datum** %10, align 8
  %18 = load i8*, i8** %7, align 8
  store i8* %18, i8** %11, align 8
  %19 = load %struct.filename_trans*, %struct.filename_trans** %9, align 8
  %20 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @strlen(i32* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @cpu_to_le32(i32 %23)
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @put_entry(i32* %26, i32 4, i32 1, i8* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %4, align 4
  br label %73

33:                                               ; preds = %3
  %34 = load %struct.filename_trans*, %struct.filename_trans** %9, align 8
  %35 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @put_entry(i32* %36, i32 1, i32 %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %4, align 4
  br label %73

44:                                               ; preds = %33
  %45 = load %struct.filename_trans*, %struct.filename_trans** %9, align 8
  %46 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @cpu_to_le32(i32 %47)
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %48, i32* %49, align 16
  %50 = load %struct.filename_trans*, %struct.filename_trans** %9, align 8
  %51 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cpu_to_le32(i32 %52)
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load %struct.filename_trans*, %struct.filename_trans** %9, align 8
  %56 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %58, i32* %59, align 8
  %60 = load %struct.filename_trans_datum*, %struct.filename_trans_datum** %10, align 8
  %61 = getelementptr inbounds %struct.filename_trans_datum, %struct.filename_trans_datum* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cpu_to_le32(i32 %62)
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @put_entry(i32* %65, i32 4, i32 4, i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %44
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %73

72:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %70, %42, %31
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @put_entry(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
