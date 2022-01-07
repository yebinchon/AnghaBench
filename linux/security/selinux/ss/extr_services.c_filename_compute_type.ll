; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_filename_compute_type.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_filename_compute_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.policydb = type { i32, i32 }
%struct.context = type { i32 }
%struct.filename_trans = type { i8*, i32, i8*, i8* }
%struct.filename_trans_datum = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.policydb*, %struct.context*, i8*, i8*, i32, i8*)* @filename_compute_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @filename_compute_type(%struct.policydb* %0, %struct.context* %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.policydb*, align 8
  %8 = alloca %struct.context*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.filename_trans, align 8
  %14 = alloca %struct.filename_trans_datum*, align 8
  store %struct.policydb* %0, %struct.policydb** %7, align 8
  store %struct.context* %1, %struct.context** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.policydb*, %struct.policydb** %7, align 8
  %16 = getelementptr inbounds %struct.policydb, %struct.policydb* %15, i32 0, i32 1
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @ebitmap_get_bit(i32* %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %42

21:                                               ; preds = %6
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %13, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %13, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %11, align 4
  %27 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %13, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = getelementptr inbounds %struct.filename_trans, %struct.filename_trans* %13, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.policydb*, %struct.policydb** %7, align 8
  %31 = getelementptr inbounds %struct.policydb, %struct.policydb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.filename_trans_datum* @hashtab_search(i32 %32, %struct.filename_trans* %13)
  store %struct.filename_trans_datum* %33, %struct.filename_trans_datum** %14, align 8
  %34 = load %struct.filename_trans_datum*, %struct.filename_trans_datum** %14, align 8
  %35 = icmp ne %struct.filename_trans_datum* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %21
  %37 = load %struct.filename_trans_datum*, %struct.filename_trans_datum** %14, align 8
  %38 = getelementptr inbounds %struct.filename_trans_datum, %struct.filename_trans_datum* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.context*, %struct.context** %8, align 8
  %41 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %20, %36, %21
  ret void
}

declare dso_local i32 @ebitmap_get_bit(i32*, i8*) #1

declare dso_local %struct.filename_trans_datum* @hashtab_search(i32, %struct.filename_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
