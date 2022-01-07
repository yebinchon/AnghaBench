; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_queue.c_ima_add_template_entry.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/ima/extr_ima_queue.c_ima_add_template_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ima_template_entry = type { i32, i32 }
%struct.inode = type { i32 }

@TPM_DIGEST_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hash_added\00", align 1
@AUDIT_CAUSE_LEN_MAX = common dso_local global i32 0, align 4
@ima_extend_list_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hash_exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ENOMEM\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"TPM_error(%d)\00", align 1
@AUDIT_INTEGRITY_PCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ima_add_template_entry(%struct.ima_template_entry* %0, i32 %1, i8* %2, %struct.inode* %3, i8* %4) #0 {
  %6 = alloca %struct.ima_template_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ima_template_entry* %0, %struct.ima_template_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.inode* %3, %struct.inode** %9, align 8
  store i8* %4, i8** %10, align 8
  %18 = load i32, i32* @TPM_DIGEST_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %22 = load i32, i32* @AUDIT_CAUSE_LEN_MAX, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %14, align 8
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = call i32 @mutex_lock(i32* @ima_extend_list_mutex)
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %5
  %29 = load %struct.ima_template_entry*, %struct.ima_template_entry** %6, align 8
  %30 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nuw i64 4, %19
  %33 = trunc i64 %32 to i32
  %34 = call i32 @memcpy(i32* %21, i32 %31, i32 %33)
  %35 = load %struct.ima_template_entry*, %struct.ima_template_entry** %6, align 8
  %36 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ima_lookup_digest_entry(i32* %21, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %16, align 4
  br label %69

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.ima_template_entry*, %struct.ima_template_entry** %6, align 8
  %46 = call i32 @ima_add_digest_entry(%struct.ima_template_entry* %45, i32 1)
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %69

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = mul nuw i64 4, %19
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memset(i32* %21, i32 255, i32 %55)
  br label %57

57:                                               ; preds = %53, %50
  %58 = load %struct.ima_template_entry*, %struct.ima_template_entry** %6, align 8
  %59 = getelementptr inbounds %struct.ima_template_entry, %struct.ima_template_entry* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ima_pcr_extend(i32* %21, i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @AUDIT_CAUSE_LEN_MAX, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @snprintf(i8* %24, i32 %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i8* %24, i8** %13, align 8
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %49, %40
  %70 = call i32 @mutex_unlock(i32* @ima_extend_list_mutex)
  %71 = load i32, i32* @AUDIT_INTEGRITY_PCR, align 4
  %72 = load %struct.inode*, %struct.inode** %9, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @integrity_audit_msg(i32 %71, %struct.inode* %72, i8* %73, i8* %74, i8* %75, i32 %76, i32 %77)
  %79 = load i32, i32* %16, align 4
  %80 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %80)
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #2

declare dso_local i64 @ima_lookup_digest_entry(i32*, i32) #2

declare dso_local i32 @ima_add_digest_entry(%struct.ima_template_entry*, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ima_pcr_extend(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @integrity_audit_msg(i32, %struct.inode*, i8*, i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
