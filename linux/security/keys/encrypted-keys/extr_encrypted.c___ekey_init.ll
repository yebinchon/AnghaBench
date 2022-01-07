; ModuleID = '/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c___ekey_init.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/encrypted-keys/extr_encrypted.c___ekey_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encrypted_key_payload = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.ecryptfs_auth_tok = type { i32 }

@key_format_default = common dso_local global i8* null, align 8
@ivsize = common dso_local global i64 0, align 8
@key_format_ecryptfs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encrypted_key_payload*, i8*, i8*, i8*)* @__ekey_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ekey_init(%struct.encrypted_key_payload* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.encrypted_key_payload*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.encrypted_key_payload* %0, %struct.encrypted_key_payload** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i8*, i8** @key_format_default, align 8
  %14 = call i32 @strlen(i8* %13)
  br label %18

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  store i32 %19, i32* %9, align 4
  %20 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %21 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %24 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %28 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %27, i32 0, i32 2
  store i64 %26, i64* %28, align 8
  %29 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %30 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = add nsw i64 %34, 1
  %36 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %37 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %39 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = add nsw i64 %44, 1
  %46 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %47 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %49 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %50, %53
  %55 = add nsw i64 %54, 1
  %56 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %57 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %56, i32 0, i32 5
  store i64 %55, i64* %57, align 8
  %58 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %59 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %58, i32 0, i32 5
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ivsize, align 8
  %62 = add nsw i64 %60, %61
  %63 = add nsw i64 %62, 1
  %64 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %65 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %64, i32 0, i32 6
  store i64 %63, i64* %65, align 8
  %66 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %67 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %70 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %18
  %74 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %75 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** @key_format_default, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @memcpy(i64 %76, i8* %77, i32 %78)
  br label %100

80:                                               ; preds = %18
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @key_format_ecryptfs, align 4
  %83 = call i32 @strcmp(i8* %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %80
  %86 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %87 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to %struct.ecryptfs_auth_tok*
  %90 = call i64 @ecryptfs_get_auth_tok_key(%struct.ecryptfs_auth_tok* %89)
  %91 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %92 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %91, i32 0, i32 4
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %85, %80
  %94 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %95 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @memcpy(i64 %96, i8* %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %73
  %101 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %102 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @memcpy(i64 %103, i8* %104, i32 %106)
  %108 = load %struct.encrypted_key_payload*, %struct.encrypted_key_payload** %5, align 8
  %109 = getelementptr inbounds %struct.encrypted_key_payload, %struct.encrypted_key_payload* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i8*, i8** %8, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @strlen(i8* %112)
  %114 = call i32 @memcpy(i64 %110, i8* %111, i32 %113)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i64 @ecryptfs_get_auth_tok_key(%struct.ecryptfs_auth_tok*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
