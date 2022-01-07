; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_redirect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_namei.c_ovl_check_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ovl_lookup_data = type { i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.ovl_lookup_data*, i64, i8*)* @ovl_check_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_check_redirect(%struct.dentry* %0, %struct.ovl_lookup_data* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.ovl_lookup_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.ovl_lookup_data* %1, %struct.ovl_lookup_data** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = sext i32 %15 to i64
  %17 = add i64 %13, %16
  %18 = call i8* @ovl_get_redirect_xattr(%struct.dentry* %12, i64 %17)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i64 @IS_ERR_OR_NULL(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @PTR_ERR(i8* %23)
  store i32 %24, i32* %5, align 4
  br label %75

25:                                               ; preds = %4
  %26 = load i8*, i8** %11, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 47
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %33 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %51

34:                                               ; preds = %25
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i64, i64* %8, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @memmove(i8* %40, i8* %41, i32 %42)
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %46 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @memcpy(i8* %44, i8* %48, i64 %49)
  br label %51

51:                                               ; preds = %34, %31
  %52 = load i8*, i8** %11, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @strcat(i8* %52, i8* %53)
  %55 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %56 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load i8*, i8** %11, align 8
  %60 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %61 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %63 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %66 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %69 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strlen(i8* %70)
  %72 = load %struct.ovl_lookup_data*, %struct.ovl_lookup_data** %7, align 8
  %73 = getelementptr inbounds %struct.ovl_lookup_data, %struct.ovl_lookup_data* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %51, %22
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i8* @ovl_get_redirect_xattr(%struct.dentry*, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
