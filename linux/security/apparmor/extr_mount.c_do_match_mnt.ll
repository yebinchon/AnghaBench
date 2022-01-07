; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_do_match_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_do_match_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_dfa = type { i32 }
%struct.aa_perms = type { i32 }

@AA_MAY_MOUNT = common dso_local global i32 0, align 4
@AA_MNT_CONT_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aa_dfa*, i32, i8*, i8*, i8*, i64, i8*, i32, %struct.aa_perms*)* @do_match_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_match_mnt(%struct.aa_dfa* %0, i32 %1, i8* %2, i8* %3, i8* %4, i64 %5, i8* %6, i32 %7, %struct.aa_perms* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.aa_dfa*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.aa_perms*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.aa_perms, align 4
  %22 = alloca %struct.aa_perms, align 4
  store %struct.aa_dfa* %0, %struct.aa_dfa** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.aa_perms* %8, %struct.aa_perms** %19, align 8
  %23 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %24 = icmp ne %struct.aa_dfa* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @AA_BUG(i32 %26)
  %28 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %29 = icmp ne %struct.aa_perms* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @AA_BUG(i32 %31)
  %33 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @aa_dfa_match(%struct.aa_dfa* %33, i32 %34, i8* %35)
  store i32 %36, i32* %20, align 4
  %37 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %38 = load i32, i32* %20, align 4
  %39 = call i32 @aa_dfa_null_transition(%struct.aa_dfa* %37, i32 %38)
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %20, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %9
  store i32 1, i32* %10, align 4
  br label %141

43:                                               ; preds = %9
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %48 = load i32, i32* %20, align 4
  %49 = load i8*, i8** %14, align 8
  %50 = call i32 @aa_dfa_match(%struct.aa_dfa* %47, i32 %48, i8* %49)
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %53 = load i32, i32* %20, align 4
  %54 = call i32 @aa_dfa_null_transition(%struct.aa_dfa* %52, i32 %53)
  store i32 %54, i32* %20, align 4
  %55 = load i32, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 2, i32* %10, align 4
  br label %141

58:                                               ; preds = %51
  %59 = load i8*, i8** %15, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i8*, i8** %15, align 8
  %65 = call i32 @aa_dfa_match(%struct.aa_dfa* %62, i32 %63, i8* %64)
  store i32 %65, i32* %20, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @aa_dfa_null_transition(%struct.aa_dfa* %67, i32 %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 3, i32* %10, align 4
  br label %141

73:                                               ; preds = %66
  %74 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i64, i64* %16, align 8
  %77 = call i32 @match_mnt_flags(%struct.aa_dfa* %74, i32 %75, i64 %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %73
  store i32 4, i32* %10, align 4
  br label %141

81:                                               ; preds = %73
  %82 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %83 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %84 = load i32, i32* %20, align 4
  %85 = call i32 @compute_mnt_perms(%struct.aa_dfa* %83, i32 %84)
  %86 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %21, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = bitcast %struct.aa_perms* %82 to i8*
  %88 = bitcast %struct.aa_perms* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 4, i1 false)
  %89 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %90 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AA_MAY_MOUNT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  br label %141

96:                                               ; preds = %81
  %97 = load i8*, i8** %17, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %140

99:                                               ; preds = %96
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %99
  %103 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %104 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AA_MNT_CONT_MATCH, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %102
  %110 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %111 = load i32, i32* %20, align 4
  %112 = call i32 @aa_dfa_null_transition(%struct.aa_dfa* %110, i32 %111)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32 4, i32* %10, align 4
  br label %141

116:                                              ; preds = %109
  %117 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 @aa_dfa_match(%struct.aa_dfa* %117, i32 %118, i8* %119)
  store i32 %120, i32* %20, align 4
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  store i32 5, i32* %10, align 4
  br label %141

124:                                              ; preds = %116
  %125 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %126 = load %struct.aa_dfa*, %struct.aa_dfa** %11, align 8
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @compute_mnt_perms(%struct.aa_dfa* %126, i32 %127)
  %129 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %22, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = bitcast %struct.aa_perms* %125 to i8*
  %131 = bitcast %struct.aa_perms* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %130, i8* align 4 %131, i64 4, i1 false)
  %132 = load %struct.aa_perms*, %struct.aa_perms** %19, align 8
  %133 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AA_MAY_MOUNT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  store i32 0, i32* %10, align 4
  br label %141

139:                                              ; preds = %124
  br label %140

140:                                              ; preds = %139, %102, %99, %96
  store i32 4, i32* %10, align 4
  br label %141

141:                                              ; preds = %140, %138, %123, %115, %95, %80, %72, %57, %42
  %142 = load i32, i32* %10, align 4
  ret i32 %142
}

declare dso_local i32 @AA_BUG(i32) #1

declare dso_local i32 @aa_dfa_match(%struct.aa_dfa*, i32, i8*) #1

declare dso_local i32 @aa_dfa_null_transition(%struct.aa_dfa*, i32) #1

declare dso_local i32 @match_mnt_flags(%struct.aa_dfa*, i32, i64) #1

declare dso_local i32 @compute_mnt_perms(%struct.aa_dfa*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
