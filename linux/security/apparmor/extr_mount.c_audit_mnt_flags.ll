; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_mnt_flags.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_mount.c_audit_mnt_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }

@MS_RDONLY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"ro\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rw\00", align 1
@MS_NOSUID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c", nosuid\00", align 1
@MS_NODEV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c", nodev\00", align 1
@MS_NOEXEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c", noexec\00", align 1
@MS_SYNCHRONOUS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c", sync\00", align 1
@MS_REMOUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c", remount\00", align 1
@MS_MANDLOCK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c", mand\00", align 1
@MS_DIRSYNC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [10 x i8] c", dirsync\00", align 1
@MS_NOATIME = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [10 x i8] c", noatime\00", align 1
@MS_NODIRATIME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c", nodiratime\00", align 1
@MS_BIND = common dso_local global i64 0, align 8
@MS_REC = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c", rbind\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c", bind\00", align 1
@MS_MOVE = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c", move\00", align 1
@MS_SILENT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c", silent\00", align 1
@MS_POSIXACL = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [6 x i8] c", acl\00", align 1
@MS_UNBINDABLE = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [14 x i8] c", runbindable\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c", unbindable\00", align 1
@MS_PRIVATE = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [11 x i8] c", rprivate\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c", private\00", align 1
@MS_SLAVE = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [9 x i8] c", rslave\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c", slave\00", align 1
@MS_SHARED = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [10 x i8] c", rshared\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c", shared\00", align 1
@MS_RELATIME = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [11 x i8] c", relatime\00", align 1
@MS_I_VERSION = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [11 x i8] c", iversion\00", align 1
@MS_STRICTATIME = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [14 x i8] c", strictatime\00", align 1
@MS_NOUSER = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [9 x i8] c", nouser\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.audit_buffer*, i64)* @audit_mnt_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audit_mnt_flags(%struct.audit_buffer* %0, i64 %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i64, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MS_RDONLY, align 8
  %7 = and i64 %5, %6
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %11 = call i32 @audit_log_format(%struct.audit_buffer* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %15

12:                                               ; preds = %2
  %13 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %14 = call i32 @audit_log_format(%struct.audit_buffer* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @MS_NOSUID, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %22 = call i32 @audit_log_format(%struct.audit_buffer* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @MS_NODEV, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %30 = call i32 @audit_log_format(%struct.audit_buffer* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @MS_NOEXEC, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %38 = call i32 @audit_log_format(%struct.audit_buffer* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @MS_SYNCHRONOUS, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %46 = call i32 @audit_log_format(%struct.audit_buffer* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @MS_REMOUNT, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %54 = call i32 @audit_log_format(%struct.audit_buffer* %53, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @MS_MANDLOCK, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %62 = call i32 @audit_log_format(%struct.audit_buffer* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @MS_DIRSYNC, align 8
  %66 = and i64 %64, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %70 = call i32 @audit_log_format(%struct.audit_buffer* %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @MS_NOATIME, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %78 = call i32 @audit_log_format(%struct.audit_buffer* %77, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %71
  %80 = load i64, i64* %4, align 8
  %81 = load i64, i64* @MS_NODIRATIME, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %86 = call i32 @audit_log_format(%struct.audit_buffer* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i64, i64* %4, align 8
  %89 = load i64, i64* @MS_BIND, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i64, i64* @MS_REC, align 8
  %96 = and i64 %94, %95
  %97 = icmp ne i64 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)
  %100 = call i32 @audit_log_format(%struct.audit_buffer* %93, i8* %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* @MS_MOVE, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %108 = call i32 @audit_log_format(%struct.audit_buffer* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %109

109:                                              ; preds = %106, %101
  %110 = load i64, i64* %4, align 8
  %111 = load i64, i64* @MS_SILENT, align 8
  %112 = and i64 %110, %111
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %116 = call i32 @audit_log_format(%struct.audit_buffer* %115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @MS_POSIXACL, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %124 = call i32 @audit_log_format(%struct.audit_buffer* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i64, i64* %4, align 8
  %127 = load i64, i64* @MS_UNBINDABLE, align 8
  %128 = and i64 %126, %127
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %132 = load i64, i64* %4, align 8
  %133 = load i64, i64* @MS_REC, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0)
  %138 = call i32 @audit_log_format(%struct.audit_buffer* %131, i8* %137)
  br label %139

139:                                              ; preds = %130, %125
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* @MS_PRIVATE, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %146 = load i64, i64* %4, align 8
  %147 = load i64, i64* @MS_REC, align 8
  %148 = and i64 %146, %147
  %149 = icmp ne i64 %148, 0
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)
  %152 = call i32 @audit_log_format(%struct.audit_buffer* %145, i8* %151)
  br label %153

153:                                              ; preds = %144, %139
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @MS_SLAVE, align 8
  %156 = and i64 %154, %155
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %153
  %159 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %160 = load i64, i64* %4, align 8
  %161 = load i64, i64* @MS_REC, align 8
  %162 = and i64 %160, %161
  %163 = icmp ne i64 %162, 0
  %164 = zext i1 %163 to i64
  %165 = select i1 %163, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0)
  %166 = call i32 @audit_log_format(%struct.audit_buffer* %159, i8* %165)
  br label %167

167:                                              ; preds = %158, %153
  %168 = load i64, i64* %4, align 8
  %169 = load i64, i64* @MS_SHARED, align 8
  %170 = and i64 %168, %169
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %167
  %173 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %174 = load i64, i64* %4, align 8
  %175 = load i64, i64* @MS_REC, align 8
  %176 = and i64 %174, %175
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0)
  %180 = call i32 @audit_log_format(%struct.audit_buffer* %173, i8* %179)
  br label %181

181:                                              ; preds = %172, %167
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* @MS_RELATIME, align 8
  %184 = and i64 %182, %183
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %188 = call i32 @audit_log_format(%struct.audit_buffer* %187, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %181
  %190 = load i64, i64* %4, align 8
  %191 = load i64, i64* @MS_I_VERSION, align 8
  %192 = and i64 %190, %191
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %196 = call i32 @audit_log_format(%struct.audit_buffer* %195, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %189
  %198 = load i64, i64* %4, align 8
  %199 = load i64, i64* @MS_STRICTATIME, align 8
  %200 = and i64 %198, %199
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %197
  %203 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %204 = call i32 @audit_log_format(%struct.audit_buffer* %203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i64 0, i64 0))
  br label %205

205:                                              ; preds = %202, %197
  %206 = load i64, i64* %4, align 8
  %207 = load i64, i64* @MS_NOUSER, align 8
  %208 = and i64 %206, %207
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %205
  %211 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %212 = call i32 @audit_log_format(%struct.audit_buffer* %211, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  br label %213

213:                                              ; preds = %210, %205
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
